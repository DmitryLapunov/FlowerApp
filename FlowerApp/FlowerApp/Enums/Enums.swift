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
}


//переименовать и вынести в отдельный файл
enum Application: String {
    case telegram
    case instagram
    case facebook
    case viber
    case vk
    case phoneGor
    case phoneA1
    case phoneMTS
    case googleMap
}
