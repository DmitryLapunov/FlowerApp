//
//  Extensions.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 19.11.21.
//

import Foundation
import UIKit

// функция для быстрого создания любой кастомной кнопки на нав баре
extension UIBarButtonItem {
    
    func menuButton(target: Any?, action: Selector, imageName: String) -> UIBarButtonItem {
        let button = UIButton(type: UIButton.ButtonType.custom)
        button.frame = CGRect(x: 0.0, y: 0.0, width: 25, height: 25)
        button.setImage(UIImage(systemName: imageName), for: UIControl.State.normal)
        button.addTarget(target, action: action, for: UIControl.Event.touchUpInside)
        
        let menuBarItem = UIBarButtonItem(customView: button)
        menuBarItem.customView?.translatesAutoresizingMaskIntoConstraints = false
        menuBarItem.customView?.heightAnchor.constraint(equalToConstant: 35).isActive = true
        menuBarItem.customView?.widthAnchor.constraint(equalToConstant: 35).isActive = true
        
        return menuBarItem
    }
}
