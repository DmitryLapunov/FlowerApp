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
}

enum ContactImage {
    case first
    case second
    case third
    
    var image: [UIImage] {
        switch self {
            
        case .first:
            return [UIImage(systemName: "phone")!, UIImage(named: "icon_a1")!, UIImage(named: "icon_mts")!, UIImage(named: "icon_viber")! ]
        case .second:
            return [UIImage(named: "icon_vkontakte")!, UIImage(named: "icon_telegram")!, UIImage(named: "icon_instagram")!, UIImage(named: "icon_facebook")!]
        case .third:
            return [UIImage(named: "icon_google_maps")!]
        }
    }
}

enum ContactInfo {
    case first
    case second
    case third
    
    var info: [ String] {
        switch self {
            
        case .first:
            return ["+375(17)396-36-66", "+375(29)668-39-65", "+375(29)751-17-77", "+375(29)161-16-66"]
        case .second:
            return ["Вконтакте", "Telegram", "Instagram", "Facebook"]
        case .third:
            return ["Google Maps"]
        }
    }
}

