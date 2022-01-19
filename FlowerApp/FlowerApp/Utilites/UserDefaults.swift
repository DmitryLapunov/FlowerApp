//
//  UserDefaults.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 20.01.22.
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
}
