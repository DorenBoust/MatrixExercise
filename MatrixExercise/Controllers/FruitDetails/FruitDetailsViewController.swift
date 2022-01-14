//
//  FruitDetailsViewController.swift
//  MatrixExercise
//
//  Created by Lior Dorenboust on 13/01/2022.
//

import UIKit

class FruitDetailsViewController: UIViewController {

    //MARK: - outlets
    @IBOutlet weak var fruitImageView: UIImageView!
    @IBOutlet weak var fruitImageFrameView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var fruitDetailsBgView: UIView!
    
    //MARK: - properties
    var fruit: Fruit?
    var viewModel: FruitDetailsViewModel?
    
    //MARK: - lifeCyrcles
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel = FruitDetailsViewModel(fruitDetailsViewController: self)
        self.viewModel?.setScreen()
        
        
    }
    

    

}
