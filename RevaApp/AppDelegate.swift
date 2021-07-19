//
//  AppDelegate.swift
//  RevaApp
//
//  Created by Reva Yoga Pradana on 16/07/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let initialVC = InitialViewController()
        let initialNVC = RevaNavigationController(rootViewController: initialVC)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = initialNVC
        window?.makeKeyAndVisible()
        
        return true
    }

}

