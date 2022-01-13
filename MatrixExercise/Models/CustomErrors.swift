//
//  CustomErrors.swift
//  MatrixExercise
//
//  Created by Lior Dorenboust on 13/01/2022.
//

import Foundation

enum GetFruitError: String, Error {
    case unexeptedError = "unexepted error"
    case fruitNotFound = "fruit not found"
    
}
