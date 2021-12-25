//
//  TabBarController.swift
//  FlowerApp
//
//  Created by Евгений on 15.11.21.
//

var translationXBool = true
var isThisSwipe = false

import Foundation
import UIKit

class TabViewController: UITabBarController {
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        createSwipe()
        
        let navTabCatalog = UINavigationController(rootViewController: CatalogVC(nibName: String(describing: CatalogVC.self), bundle: nil))
        let navTabFavourite = UINavigationController(rootViewController: FavouriteVC(nibName: String(describing: FavouriteVC.self), bundle: nil))
        let navTabContacts = UINavigationController(rootViewController: ContactsVC(nibName: String(describing: ContactsVC.self), bundle: nil))
//        let navTabShopping = UINavigationController(rootViewController: ShoppingCartVC(nibName: String(describing: ShoppingCartVC.self), bundle: nil))
        let navTabShopping = UINavigationController(rootViewController: OrderVC(nibName: String(describing: OrderVC.self), bundle: nil))
        
        self.viewControllers = [navTabCatalog, navTabFavourite, navTabContacts, navTabShopping]
                
        navTabCatalog.tabBarItem = UITabBarItem(title: "Каталог", image: UIImage(named: "icon_flower"), tag: 0)
        navTabFavourite.tabBarItem = UITabBarItem(title: "Избранное", image: UIImage(named: "icon_bookmark"), tag: 1)
        navTabContacts.tabBarItem = UITabBarItem(title: "Контакты", image: UIImage(named: "icon_info"), tag: 2)
        navTabShopping.tabBarItem = UITabBarItem(title: "Корзина", image: UIImage(named: "icon_cart"), tag: 3)
        
        
        self.tabBar.tintColor = UIColor.mainColor
        
        let badge = RealmManager.shared.getCart().count
        navTabShopping.tabBarItem.badgeValue = badge == 0 ? nil : "\(badge)"
    }
    
    @objc private func swipeGesture(swipe: UISwipeGestureRecognizer) {
        isThisSwipe = true
        switch swipe.direction {
        case .left:
            if selectedIndex >= 0 {
                self.selectedIndex = self.selectedIndex + 1
                translationXBool = true
            }
            break
        case .right:
            if selectedIndex < 4 {
                self.selectedIndex = self.selectedIndex - 1
                translationXBool = false
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
    func tabBarController(_ tabBarController: UITabBarController, animationControllerForTransitionFrom fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        if isThisSwipe {    
            isThisSwipe = false
            return TabViewAnimation()
        }
       return nil
    }
}

class TabViewAnimation: NSObject, UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.3
    }

    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard let destination = transitionContext.view(forKey: .to) else { return }
        if translationXBool {
            destination.transform = CGAffineTransform(translationX: destination.frame.width, y: 0)
        } else {
            destination.transform = CGAffineTransform(translationX: -destination.frame.width, y: 0)
        }
        transitionContext.containerView.addSubview(destination)

        UIView.animate(withDuration: transitionDuration(using: transitionContext), animations: {
            destination.transform = .identity
        }, completion: {
            transitionContext.completeTransition($0)
            
        })
        
        
    }
}
