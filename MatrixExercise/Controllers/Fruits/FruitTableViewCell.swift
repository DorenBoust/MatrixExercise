//
//  FruitTableViewCell.swift
//  MatrixExercise
//
//  Created by Lior Dorenboust on 13/01/2022.
//

import UIKit
import SDWebImage

class FruitTableViewCell: UITableViewCell {

    //MARK: - outlets
    @IBOutlet weak var fruitNameLabel: UILabel!
    @IBOutlet weak var fruitImageView: UIImageView!
    
    //MARK: - properties
    static let cellID = "FruitTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    static func nib() -> UINib {
        return UINib(nibName: cellID, bundle: nil)
    }
    
    //MARK: - public functions
    public func setCell(fruitModel: Fruit){
        self.fruitNameLabel.text = fruitModel.name
        self.fruitImageView.sd_setImage(with: URL(string: fruitModel.image), placeholderImage: UIImage(named: "itemPlaceHolder.png"))
        
        
        
    }
    
}
