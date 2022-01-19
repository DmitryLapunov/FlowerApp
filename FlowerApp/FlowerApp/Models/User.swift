//
//  User.swift
//  FlowerApp
//
//  Created by Illia Romanenko on 12.12.21.
//

import Foundation

enum DeliveryType: String, CaseIterable {
    case pickup = "Самовывоз, Гикало 7"
    case delivery = "Доставка"
    case fastDelivery = "Экспресс-доставка"
    case freeDelivery = "Бесплатная доставка"
    
    var name: String {
        switch self {
        case .delivery:
            return "delivery"
        case .fastDelivery:
            return "fastDelivery"
        case .pickup:
            return "pickup"
        case .freeDelivery:
            return "freeDelivery"
        }
    }
    
    var price: String {
        switch self {
        case .delivery:
            return "5"
        case .fastDelivery:
            return "16"
        case .freeDelivery:
            return "0"
        case .pickup:
            return "0"
        }
    }
}

class User {
    var name: String
    var phone: String
    var address: String
    var delivery: DeliveryType
    
    init(name: String, phone: String, address: String, delivery: DeliveryType) {
        self.name = name
        self.phone = phone
        self.address = address
        self.delivery = delivery
    }
    
    /// Convert user information as params
    /// - Returns: Returns user data as dictionary
    func params() -> [String: Any] {
        var userParams = [String: Any]()
        userParams["name"] = self.name
        userParams["phone"] = self.phone
        userParams["address"] = self.address
        userParams["delivery"] = self.delivery.rawValue
        
        return userParams
    }
}
