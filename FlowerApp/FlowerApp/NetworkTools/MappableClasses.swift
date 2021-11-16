//
//  MappableClasses.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 16.11.21.
//

import Foundation
import ObjectMapper

class Product: Mappable {
    var itemName: String = ""
    var itemLink: String?
    var costByn: Double?
    var photos: [String]?
    var description: [ProductDescription]?
    var category: String?
    
    required init?(map: Map) {
        mapping(map: map)
    }
    
    func mapping(map: Map) {
        itemName            <- map["itemName"]
        itemLink            <- map["itemLink"]
        costByn             <- map["costByn"]
        photos              <- map["photos"]
        description         <- map["description"]
        category            <- map["category"]
    }
}

class ProductDescription: Mappable {
    var composition: [String]?
    var package: String = ""
    var size: String?
    var aboutItem: String?
    
    required init?(map: Map) {
        mapping(map: map)
    }
    
    func mapping(map: Map) {
        composition         <- map["composition"]
        package             <- map["package"]
        size                <- map["size"]
        aboutItem           <- map["aboutItem"]
    }
}
