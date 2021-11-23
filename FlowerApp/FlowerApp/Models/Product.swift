//
//  Product.swift
//  FlowerApp
//
//  Created by Евгений on 20.11.21.
//

import Foundation
import Realm
import RealmSwift

class ProductObject: Object {
    
    @objc dynamic var productName: String = ""
    
    convenience init (productName: String) {
        self.init()
        self.productName = productName
    }
}
