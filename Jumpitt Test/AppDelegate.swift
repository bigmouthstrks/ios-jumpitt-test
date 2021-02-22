//
//  AppDelegate.swift
//  Jumpitt Test
//
//  Created by Benjamin Andres Caceres Ramirez on 2/20/21.
//  Copyright © 2021 Benjamin Andres Caceres Ramirez. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        let homeVC = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        let navigationController = UINavigationController()
        
        window?.rootViewController = navigationController
        navigationController.pushViewController(homeVC, animated: true)
        window?.makeKeyAndVisible()
        
        return true
    }
}
