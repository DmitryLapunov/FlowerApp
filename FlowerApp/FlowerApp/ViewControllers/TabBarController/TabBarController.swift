//
//  TabBarController.swift
//  FlowerApp
//
//  Created by Евгений on 15.11.21.
//

import Foundation
import UIKit

class TabViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        createSwipe()
        
    }
    
    @objc private func swipeGesture(swipe: UISwipeGestureRecognizer) {
        switch swipe.direction {
        case .left:
            if selectedIndex >= 0 {
                self.selectedIndex = self.selectedIndex + 1
            }
            break
        case .right:
            if selectedIndex < 4 {
                self.selectedIndex = self.selectedIndex - 1
            }
            break
        default:
            break
        }
    }
    
    func createSwipe() {
        var swipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeGesture))
        swipe.direction = .right
        self.view.addGestureRecognizer(swipe)
        
        swipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeGesture))
        swipe.direction = .left
        self.view.addGestureRecognizer(swipe)
    }
    
}

extension TabViewController: UITabBarControllerDelegate {
    
}
