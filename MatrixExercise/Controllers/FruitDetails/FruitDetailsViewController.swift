//
//  FruitDetailsViewController.swift
//  MatrixExercise
//
//  Created by Lior Dorenboust on 13/01/2022.
//

import UIKit
import SDWebImage

class FruitDetailsViewController: UIViewController {

    //MARK: - outlets
    @IBOutlet weak var fruitImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    //MARK: - properties
    var fruit: Fruit?
    
    //MARK: - lifeCyrcles
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let fruit = self.fruit else {return}
        
        self.fruitImageView.sd_setImage(with: URL(string: fruit.image), placeholderImage: UIImage(named: "itemPlaceHolder.png"))
        self.fruitImageView.maskCircle()
        self.nameLabel.text = fruit.name
        self.descriptionLabel.text = fruit.description
        self.priceLabel.text = "Price: \(fruit.price)"
        
    }
    

    

}
