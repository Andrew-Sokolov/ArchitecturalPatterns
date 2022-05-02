//
//  AppDelegate.swift
//  Coordinator
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var coordinator: Coordinator?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        if let navigationController = window?.rootViewController as? UINavigationController {
            coordinator = Coordinator(navigationController: navigationController)
            coordinator!.start()
        }
        
        return true
    }
    
}
