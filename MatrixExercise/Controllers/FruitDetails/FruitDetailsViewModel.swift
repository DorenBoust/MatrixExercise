//
//  FruitDetailsViewModel.swift
//  MatrixExercise
//
//  Created by Lior Dorenboust on 13/01/2022.
//

import Foundation
import SDWebImage

struct FruitDetailsViewModel {
    //MARK: - properties
    var fruitDetailsViewController: FruitDetailsViewController
    
    //MARK: - public functions
    public func setScreen(){
        guard let fruit = fruitDetailsViewController.fruit else {return}
        fruitDetailsViewController.fruitImageView.sd_setImage(with: URL(string: fruit.image), placeholderImage: UIImage(named: "itemPlaceHolder.png"))
        fruitDetailsViewController.fruitImageView.maskCircle()
        fruitDetailsViewController.nameLabel.text = fruit.name
        fruitDetailsViewController.descriptionLabel.text = fruit.description
        fruitDetailsViewController.priceLabel.text = "Price: \(fruit.price)"
        fruitDetailsViewController.fruitImageFrameView.circle()
        
    }
}
