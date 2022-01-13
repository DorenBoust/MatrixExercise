//
//  Fruit.swift
//  MatrixExercise
//
//  Created by Lior Dorenboust on 13/01/2022.
//

import Foundation

struct Fruits: Codable {
    var fruits: [Fruit]
}

struct Fruit: Codable {
    var name: String
    var image: String
    var description: String
    var price: Int
    
}
