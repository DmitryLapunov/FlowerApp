//
//  Enums.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 14.11.21.
//

import Foundation
import UIKit

enum CategoryType: String, CaseIterable {
    case basketsWithFlowers = "Корзины с цветами"
    case bridalBouquet = "Свадебные букеты"
    case bouquets = "Букеты"
    case driedFlowersBouquets = "Букеты из сухоцветов"
    case flowersInABox = "Цветы в коробке"
    case forLovers = "Для Влюблённых"
    case marchEight = "8 Марта"
    case edibleBouquets = "Съедобные букеты"
    case balloons = "Воздушные шары"
    case presents = "Подарки"
    case christmasAndNewYear = "Рождество Новый год"
    
    init?(id: Int) {
        switch id {
        case 1:
            self = .basketsWithFlowers
        case 2:
            self = .bridalBouquet
        case 3:
            self = .bouquets
        case 4:
            self = .driedFlowersBouquets
        case 5:
            self = .flowersInABox
        case 6:
            self = .forLovers
        case 7:
            self = .marchEight
        case 8:
            self = .edibleBouquets
        case 9:
            self = .balloons
        case 10:
            self = .presents
        case 11:
            self = .christmasAndNewYear
        default:
            return nil
        }
    }
}

enum Application: String {
    case telegram
    case instagram
    case facebook
    case viber
    case vk
    case phone
    case googleMap
}
