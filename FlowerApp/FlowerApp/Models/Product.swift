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
    @objc dynamic var productDescriprion: String = ""
    @objc dynamic var productPrice: String = ""
    @objc dynamic var productImage: String = ""
    
    convenience init (productName: String, productDescriprion: String, productPrice: String, productImage: String) {
        self.init()
        self.productName = productName
        self.productDescriprion = productDescriprion
        self.productPrice = productPrice
        self.productImage = productImage
    }
}
