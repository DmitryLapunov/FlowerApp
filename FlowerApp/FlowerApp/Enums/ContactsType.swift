//
//  ContactsType.swift
//  FlowerApp
//
//  Created by Евгений on 7.12.21.
//

import Foundation
import UIKit


enum ContactsType: String {
    case telegram
    case instagram
    case facebook
    case viber
    case vk
    case phoneGor
    case phoneA1
    case phoneMTS
    case googleMap
    case workTime
    
    var image: UIImage {
        switch self {
            
        case .telegram:
            return UIImage(named: "icon_telegram")!
        case .instagram:
            return UIImage(named: "icon_instagram")!
        case .facebook:
            return UIImage(named: "icon_facebook")!
        case .viber:
            return UIImage(named: "icon_viber")!
        case .vk:
            return UIImage(named: "icon_vkontakte")!
        case .phoneGor:
            return UIImage(named: "icon_phone")!
        case .phoneA1:
            return UIImage(named: "icon_a1")!
        case .phoneMTS:
            return UIImage(named: "icon_mts")!
        case .googleMap:
            return UIImage(named: "icon_google_maps")!
        case .workTime:
            return UIImage(named: "icon_clock")!
        }
    }
    
    var contactInfo: String {
        switch self {
        case .telegram:
            return "Telegram"
        case .instagram:
            return "Instagram"
        case .facebook:
            return "Facebook"
        case .viber:
            return "+375(29)161-16-66"
        case .vk:
            return "Вконтакте"
        case .phoneGor:
            return "+375(17)396-36-66"
        case .phoneA1:
            return "+375(29)668-39-65"
        case .phoneMTS:
            return "+375(29)751-17-77"
        case .googleMap:
            return "Мы на карте"
        case .workTime:
            return "8:00-20:00 ежедневно"
        }
    }
}

