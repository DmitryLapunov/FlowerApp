//
//  CodableClasses.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 16.11.21.
//

import Foundation

struct ParsedJSON: Codable {
    let data: [Product]
}

struct Product: Codable {
    var itemName: String?
    var itemLink: String?
    var cost: Double? {
        get {
           return Double(costByn ?? "0.0")
        }
    }
    var photos: [String]?
    var description: ProductDescription?
    var category: String?
    var costByn: String? 
}

struct ProductDescription: Codable {
    var composition: [String]?
    var package: String?
    var size: String?
    var aboutItem: String?
}
