//
//  UIView + extenstion.swift
//  MatrixExercise
//
//  Created by Lior Dorenboust on 14/01/2022.
//


import UIKit

extension UIView {
    public func circle(){
        self.layer.cornerRadius = self.frame.size.width/2
        self.clipsToBounds = true
        
    }
}
