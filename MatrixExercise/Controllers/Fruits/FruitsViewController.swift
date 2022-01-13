//
//  ViewController.swift
//  MatrixExercise
//
//  Created by Lior Dorenboust on 13/01/2022.
//

import UIKit

class FruitsViewController: UIViewController {

    
    //MARK: - outlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - properties
    var fruits: Fruits?
    
    //MARK: - lifeCyrcles
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.register(FruitTableViewCell.nib(), forCellReuseIdentifier: FruitTableViewCell.cellID)
        
        // get all fruits
        FruitAPI.shared.getFruit { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let fruits):
                    self?.fruits = fruits
                    self?.tableView.reloadData()
                case .failure(_):
                    print("Error")
                }
            }
            
        }
    }


}

//MARK: - extension
extension FruitsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.fruits?.fruits.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FruitTableViewCell.cellID, for: indexPath) as! FruitTableViewCell
        
        if let fruit = self.fruits?.fruits[indexPath.row] {
            cell.setCell(fruitModel: fruit)
            return cell
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let fruit = self.fruits?.fruits[indexPath.row] else {
            return
        }
        
        let fruitDetailsViewController = self.storyboard?.instantiateViewController(withIdentifier: "FruitDetailsViewController") as? FruitDetailsViewController
        fruitDetailsViewController?.fruit = fruit
        self.navigationController?.pushViewController(fruitDetailsViewController!, animated: true)
        
        
    }
    
}

