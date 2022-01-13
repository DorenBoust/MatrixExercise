//
//  UIViewCustom.swift
//  MatrixExercise
//
//  Created by Lior Dorenboust on 14/01/2022.
//

import UIKit

@IBDesignable
class UIViewCustom: UIView {
    
    //MARK: - storyboard func
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
           self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var shadowColor: UIColor = UIColor.clear {
        didSet {
           self.layer.shadowColor = shadowColor.cgColor
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 0.0 {
        didSet {
           self.layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable var shadowOffset: CGSize = CGSize(width: 0, height: 0) {
        didSet {
           self.layer.shadowOffset = shadowOffset
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 0.0 {
        didSet {
           self.layer.shadowOpacity = shadowOpacity
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
           self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
           self.layer.borderWidth = borderWidth
        }
    }
    
    
}
