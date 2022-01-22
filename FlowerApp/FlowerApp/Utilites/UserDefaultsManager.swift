//
//  UserDefaultsManager.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 22.01.22.
//

import Foundation

class UserDefaultsManager {
    class var orderIsActive: Bool {
        get {
            let orderIsActive = UserDefaults.standard.value(forKey: #function) as? Bool
            return orderIsActive ?? false
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: #function)
        }
    }
    
    class var delivery: DeliveryInfo {
        get {
            let deliveryInfo = UserDefaults.standard.value(forKey: #function) as? DeliveryInfo
            return deliveryInfo ?? DeliveryInfo()
        }
        set {
            UserDefaults.standard.setValue(newValue, forKey: #function)
        }
    }
}
