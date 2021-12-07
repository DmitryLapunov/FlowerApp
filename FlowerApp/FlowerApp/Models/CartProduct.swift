//
//  CartProduct.swift
//  FlowerApp
//
//  Created by Illia Romanenko on 7.12.21.
//

import Foundation
import Alamofire

class CartProduct: ProductObject {
    @objc dynamic var count = 0
    
    convenience init(productName: String, count: Int) {
        self.init()
        self.productName = productName
        self.count = count
    }
}
