//
//  SceneDelegate.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 13.11.21.
//

import UIKit
import GoogleMaps

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        GMSServices.provideAPIKey("AIzaSyAS6qgX2yi3HcDVg_Um0ScpBP4wkp3R5pM")
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        configureTabBar()
        configureNavBar()
        createNavigationTabBar()
    }
  
    func createNavigationTabBar() {
        
        let navTabCatalog = UINavigationController(rootViewController: CatalogVC(nibName: String(describing: CatalogVC.self), bundle: nil))
        let navTabFavourite = UINavigationController(rootViewController: FavouriteVC(nibName: String(describing: FavouriteVC.self), bundle: nil))
        let navTabContacts = UINavigationController(rootViewController: ContactsVC(nibName: String(describing: ContactsVC.self), bundle: nil))
        let navTabShopping = UINavigationController(rootViewController: ShoppingCartVC(nibName: String(describing: ShoppingCartVC.self), bundle: nil))
    
        let tabBarController = TabViewController()
        
        tabBarController.viewControllers = [navTabCatalog, navTabFavourite, navTabContacts, navTabShopping]
                
        navTabCatalog.tabBarItem = UITabBarItem(title: "Каталог", image: UIImage(named: "icon_flower"), tag: 0)
        navTabFavourite.tabBarItem = UITabBarItem(title: "Избранное", image: UIImage(named: "icon_bookmark"), tag: 1)
        navTabContacts.tabBarItem = UITabBarItem(title: "Контакты", image: UIImage(named: "icon_info"), tag: 2)
        navTabShopping.tabBarItem = UITabBarItem(title: "Корзина", image: UIImage(named: "icon_cart"), tag: 3)
        
        tabBarController.tabBar.tintColor = UIColor(named: "MainColor")
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
    }
    
    private func configureTabBar() {
        if #available(iOS 13.0, *) {
            let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
            let tabBarItemAppearance = UITabBarItemAppearance()
            
            tabBarAppearance.configureWithDefaultBackground()
            tabBarAppearance.backgroundColor = UIColor(named: "TertiaryColor")
            
            if let font = UIFont(name: "Open Sans", size: 10), let color = UIColor(named: "SecondaryLabelColor") {
                tabBarItemAppearance.normal.iconColor = color
                tabBarItemAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: color]
                tabBarItemAppearance.normal.titleTextAttributes = [NSAttributedString.Key.font: font]
                tabBarItemAppearance.selected.titleTextAttributes = [NSAttributedString.Key.font: font]
            }
            
            tabBarAppearance.stackedLayoutAppearance = tabBarItemAppearance
                        
            UITabBar.appearance().standardAppearance = tabBarAppearance

            if #available(iOS 15.0, *) {
                UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            }
        }
    }
    
    private func configureNavBar() {
        if #available(iOS 15.0, *) {
            let navigationBarAppearance = UINavigationBarAppearance()
            navigationBarAppearance.configureWithDefaultBackground()
            navigationBarAppearance.shadowColor = .clear
            navigationBarAppearance.backgroundColor = UIColor(named: "TertiaryColor")
            
            if let font = UIFont(name: "Open Sans", size: 20) {
                navigationBarAppearance.titleTextAttributes = [NSAttributedString.Key.font: font]
            }
            
            UINavigationBar.appearance().standardAppearance = navigationBarAppearance
            UINavigationBar.appearance().compactAppearance = navigationBarAppearance
            UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
            UINavigationBar.appearance().tintColor = UIColor(named: "MainColor")
        }
    }
}


