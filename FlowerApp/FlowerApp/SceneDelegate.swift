//
//  SceneDelegate.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 13.11.21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        configureTabBar()
        configureNavBar()
        createNavigationTabBar()
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
        //        guard let windowScene = (scene as? UIWindowScene) else { return }
        //        window = UIWindow(windowScene: windowScene)
        //        window?.windowScene = windowScene
        //        window?.rootViewController = UINavigationController(rootViewController: CollectionView(nibName: String(describing: CollectionView.self), bundle: nil))
        //        window?.makeKeyAndVisible()
        
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
    
    func createNavigationTabBar() {
        
        let navTabCatalog = UINavigationController(rootViewController: CatalogVC(nibName: String(describing: CatalogVC.self), bundle: nil))
        let navTabFavourite = UINavigationController(rootViewController: FavouriteVC(nibName: String(describing: FavouriteVC.self), bundle: nil))
        let navTabContacts = UINavigationController(rootViewController: ContactsVC(nibName: String(describing: ContactsVC.self), bundle: nil))
        let navTabShopping = UINavigationController(rootViewController: ShoppingCartVC(nibName: String(describing: ShoppingCartVC.self), bundle: nil))
    
        let tabBarController = TabViewController()
        
        tabBarController.viewControllers = [navTabCatalog, navTabFavourite, navTabContacts, navTabShopping]
                
        let item1 = UITabBarItem(title: "Каталог", image: UIImage(named: "icon_flower"), tag: 0)
        let item2 = UITabBarItem(title: "Избранное", image: UIImage(named: "icon_bookmark"), tag: 1)
        let item3 = UITabBarItem(title: "Контакты", image: UIImage(named: "icon_info"), tag: 2)
        let item4 = UITabBarItem(title: "Корзина", image: UIImage(named: "icon_cart"), tag: 3)
        
        navTabCatalog.tabBarItem = item1
        navTabFavourite.tabBarItem = item2
        navTabContacts.tabBarItem = item3
        navTabShopping.tabBarItem = item4
        
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
        }
    }
}


