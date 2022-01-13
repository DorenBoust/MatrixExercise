//
//  UIImageView + extension.swift
//  MatrixExercise
//
//  Created by Lior Dorenboust on 13/01/2022.
//

import Foundation
import UIKit
extension UIImageView {
    
    public func maskCircle() {
        self.layer.cornerRadius = (self.frame.size.width) / 2
        self.clipsToBounds = true
        self.layer.borderWidth = 3.0
        self.layer.borderColor = UIColor.black.cgColor
    }
    
    public func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let maskPath = UIBezierPath(roundedRect: bounds,
                                    byRoundingCorners: corners,
                                    cornerRadii: CGSize(width: radius, height: radius))
        let shape = CAShapeLayer()
        shape.path = maskPath.cgPath
        layer.mask = shape
    }


}
