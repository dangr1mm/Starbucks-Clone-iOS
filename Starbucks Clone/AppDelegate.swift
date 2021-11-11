//
//  AppDelegate.swift
//  Starbucks Clone
//
//  Created by Dan Grimm on 02/11/21.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        
        let homeVC = HomeViewController()
        let scanVC = ScanViewController()
        let orderVC = OrderViewController()
        let giftVC = GiftViewController()
        let storeVC = StoreViewController()
        
        let scanNC = UINavigationController(rootViewController: scanVC)
        let orderNC = UINavigationController(rootViewController: orderVC)
        let giftNC = UINavigationController(rootViewController: giftVC)
        let storeNC = UINavigationController(rootViewController: storeVC)
        
        let tabBarController = UITabBarController()
//        let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
//        tabBarAppearance.configureWithDefaultBackground()
//        tabBarAppearance.backgroundColor = UIColor.lightGray
//        UITabBar.appearance().standardAppearance = tabBarAppearance
//        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        tabBarController.viewControllers = [homeVC, scanNC, orderNC, giftNC, storeNC]
        
        window?.rootViewController = tabBarController
        
        tabBarController.tabBar.tintColor = .lightGreen
        tabBarController.tabBar.isTranslucent = false
        
        return true
    }
}

