//
//  AppDelegate.swift
//  mdsave
//
//  Created by IOS Developer on 10/22/14.
//  Copyright (c) 2014 Valodya. All rights reserved.
//

import UIKit
import Foundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var homeVC:HomeViewController?
    var searchVC:SearchViewController?
    var accountVC:AccountViewController?
    var cartVC:CartViewController?
    var helpVC:HelpViewController?
    var detailVC:DetailsViewController?
    var procedureVC:AvailableProceduresViewController?
    var mapVC:MapViewController?
    var helpQuestionVC:HelpQuestionsViewController?
    

    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
    
        
        // Override point for customization after application launch.
        let tabBarController = UITabBarController()
        
        let searchViewController = SearchViewController()
        let searchNavigationController = UINavigationController(rootViewController: searchViewController)
        searchNavigationController.setNavigationBarHidden(true, animated: false)
        
        let detailsViewController = DetailsViewController()
        let detailsNavigationController = UINavigationController(rootViewController: detailsViewController)
        detailsNavigationController.setNavigationBarHidden(true, animated: false)
        
        let homeViewController = HomeViewController()
        let homeNavigationController = UINavigationController(rootViewController: homeViewController)
        homeNavigationController.setNavigationBarHidden(true, animated: false)
        
        let accountViewController = AccountViewController()
        let accountNavigationController = UINavigationController(rootViewController: accountViewController)
        accountNavigationController.setNavigationBarHidden(true, animated: false)

        let cartViewController = CartViewController()
        let cartNavigationController = UINavigationController(rootViewController: cartViewController)
        cartNavigationController.setNavigationBarHidden(true, animated: false)
        
        let proceduresViewController = AvailableProceduresViewController()
        let proceduresNavigationController = UINavigationController(rootViewController: proceduresViewController)
        proceduresNavigationController.setNavigationBarHidden(true, animated: false)
       
        let mapViewController = MapViewController()
        let mapNavigationController = UINavigationController(rootViewController: mapViewController)
        mapNavigationController.setNavigationBarHidden(true, animated: false)
        
        let helpViewController = HelpViewController()
        let helpNavigationController = UINavigationController(rootViewController: helpViewController)
        helpNavigationController.setNavigationBarHidden(true, animated: false)

        let helpQuestionsViewController = HelpQuestionsViewController()
        let helpQuestionsNavigationController = UINavigationController(rootViewController: helpQuestionsViewController)
        helpQuestionsNavigationController.setNavigationBarHidden(true, animated: false)
        
        let controllers = [homeNavigationController,searchNavigationController,accountNavigationController,cartNavigationController]
        tabBarController.viewControllers = controllers
        
        
        
        homeNavigationController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "home.png"), tag: 0)
        searchNavigationController.tabBarItem = UITabBarItem(title: "Search", image: UIImage(named: "search.png"), tag: 0)
        accountNavigationController.tabBarItem = UITabBarItem(title: "Account", image: UIImage(named: "account.png"), tag: 0)
        cartNavigationController.tabBarItem = UITabBarItem(title: "Cart", image: UIImage(named: "cart.png"), tag: 0)
        
        
        window?.rootViewController = tabBarController
        window!.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

