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
        window?.rootViewController = TabViewController()
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


