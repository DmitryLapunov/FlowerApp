//
//  UIApplication+Extensions.swift
//  FlowerApp
//
//  Created by Евгений on 26.11.21.
//

import Foundation
import UIKit

extension UIApplication {
    class func topWindowController(controller: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let navigationController = controller as? UINavigationController {
            return topWindowController(controller: navigationController.visibleViewController)
        }
        if let tabController = controller as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return topWindowController(controller: selected)
            }
        }
        if let presented = controller?.presentedViewController {
            return topWindowController(controller: presented)
        }
        return controller
    }
}
