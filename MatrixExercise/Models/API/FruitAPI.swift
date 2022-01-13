//
//  FruitAPI.swift
//  MatrixExercise
//
//  Created by Lior Dorenboust on 13/01/2022.
//

import Foundation

struct FruitAPI {
    //MARK: - singleton
    static let shared = FruitAPI()
    
    //MARK: - properties
    private let api = "https://dev-api.com/fruitsBT/getFruits"
    
    //MARK: - public functions
    public func getFruit(callback: @escaping (Result<Fruits, GetFruitError>)->Void){
        
        guard let getFruitURL = URL(string: self.api) else {
            callback(.failure(.unexeptedError))
            return
        }
        
        URLSession.shared.dataTask(with: getFruitURL) { data, ress, error in
            if error == nil {
                
                guard let data = data else {
                    callback(.failure(.unexeptedError))
                    return
                }
                
                do {
                    let fruits = try JSONDecoder().decode(Fruits.self, from: data)
                    callback(.success(fruits))
                } catch let e {
                    print("error: \(e.localizedDescription)")
                    callback(.failure(.unexeptedError))
                }
                
                
            } else {
                
                callback(.failure(.unexeptedError))
            }
            
            
        }.resume()
    }
}
