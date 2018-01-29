//
//  AppDelegate.swift
//  Swift-iOS-Example
//
//  Created by Vahid Amiri Motlagh on 1/26/18.
//  Copyright © 2018 UNIVER30t Network. All rights reserved.
//	Swift version: 4.0

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?;
	var tabBarController: UITabBarController?;

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		self.customizeNavigationBar();
		
		return true;
	}
	
	func customizeNavigationBar() {
		window = UIWindow(frame: UIScreen.main.bounds);
		
		self.tabBarController = UITabBarController();
		
		// instanciate your view controllers that are loaded through the tab bar
		let contentListViewController = ContentListViewController();
		contentListViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 0);
		// if any of your view controllers contains a navigation controller, you must initialize it here and later add it to controllers array instead of the view controller itself
		var navigationController = UINavigationController();
		navigationController = UINavigationController(rootViewController: contentListViewController);

		let contentViewController = ContentViewController();
		contentViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1);

		let searchViewController = SearchViewController();
		searchViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 2);

		let controllers = [contentViewController, searchViewController, navigationController as Any] as [Any];
		self.tabBarController?.viewControllers = controllers as? [UIViewController];
		self.window?.rootViewController = self.tabBarController;
		
		let navigationAppearance = UINavigationBar.appearance();
		// change color of navigation bar background
		navigationAppearance.barTintColor = PRIMARY_COLOR;
		// change color of navigation bar items (buttons)
		navigationAppearance.tintColor = UIColor.white;
		// change color of navigation bar title
		navigationAppearance.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white];
		// set the style of status bar so it's clearly visible
		UIApplication.shared.statusBarStyle = .lightContent;
		
		self.window?.makeKeyAndVisible();
	}

	func applicationWillResignActive(_ application: UIApplication) {
		// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
		// Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
	}

	func applicationDidEnterBackground(_ application: UIApplication) {
		// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
		// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
	}

	func applicationWillEnterForeground(_ application: UIApplication) {
		// Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
	}

	func applicationDidBecomeActive(_ application: UIApplication) {
		// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
	}

	func applicationWillTerminate(_ application: UIApplication) {
		// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
	}
}

