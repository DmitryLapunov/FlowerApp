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

// расширение для вычисления реальной высоты/ширины лейбла в случае, если она динамическая
extension String {
    
    func height(withConstrainedWidth width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
        
        return ceil(boundingBox.height)
    }
    
    func width(withConstraintedHeight height: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: .greatestFiniteMagnitude, height: height)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
        
        return ceil(boundingBox.width)
    }
}

extension UIView {
    
    func addShadowAndCornerRadius() {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.15
        self.layer.shadowRadius = 2
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.cornerRadius = 10
    }
}

extension UIButton {
    
    func addShadowAndTintColor() {
        self.tintColor = UIColor(named: "MainColor")
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.15
        self.layer.shadowRadius = 2
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
    }
}
