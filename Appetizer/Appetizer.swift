//
//  Appetizer.swift
//  Appetizer
//
//  Created by Oscar Santos on 11/25/20.
//

import Foundation

struct Appetizer : Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse {
    let request: [Appetizer]
}

struct MockData {
    
    static let sampleAppetizer = Appetizer(id: 1234,
                                           name: "Sampletizer",
                                           description: "This is a sample yummy appetizer that you want to try because is delicious.",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 98,
                                           protein: 34,
                                           carbs: 40)
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
