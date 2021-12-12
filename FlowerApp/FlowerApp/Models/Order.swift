//
//  Order.swift
//  FlowerApp
//
//  Created by Illia Romanenko on 12.12.21.
//

import Foundation

class Order {
    var user: User
    var totalCost: Double
    var products: [CartProduct]
    
    init(user: User) {
        self.user = user
        self.products = RealmManager.shared.getCart()
        self.totalCost = products.map({ $0.productCost * Double($0.count)}).reduce(0.0, +)
        if user.delivery == .delivery {
            self.totalCost += 5.0
        }
    }
    
    /// Build order
    /// - Returns: full order with user information, total cost and products
    func params() -> [String: Any] {
        var params = [String: Any]()
        params["user"] = self.user.params()
        params["totalCost"] = self.totalCost
        params["products"] = self.products
        return params
    }
}
