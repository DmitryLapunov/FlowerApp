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
    
    class var deliveryGeneral: Int? {
        get {
            return UserDefaults.standard.value(forKey: #function) as? Int
        }
        set {
            UserDefaults.standard.set(newValue, forKey: #function)
        }
    }
    
    class var deliveryUrgent: Int? {
        get {
            return UserDefaults.standard.value(forKey: #function) as? Int
        }
        set {
            UserDefaults.standard.set(newValue, forKey: #function)
        }
    }
    
    class var deliveryFreeLimit: Int? {
        get {
            return UserDefaults.standard.value(forKey: #function) as? Int
        }
        set {
            UserDefaults.standard.set(newValue, forKey: #function)
        }
    }
}
