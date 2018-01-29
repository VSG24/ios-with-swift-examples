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
	var navigationController: UINavigationController?;

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		
		self.customizeNavigationBar();
		
		return true;
	}
	
	func customizeNavigationBar() {
		window = UIWindow(frame: UIScreen.main.bounds)
		// app starts in ContentListViewController (it's the main vc)
		let contentListViewController = ContentListViewController() as UIViewController;
		self.navigationController = UINavigationController(rootViewController: contentListViewController);
		self.navigationController?.navigationBar.isTranslucent = false;
		// all view controllers are managed by navigation controller
		self.window?.rootViewController = navigationController;
		self.window?.makeKeyAndVisible();
		
		let navigationAppearance = UINavigationBar.appearance();
		// change color of navigation bar background
		navigationAppearance.barTintColor = PRIMARY_COLOR;
		// change color of navigation bar items (buttons)
		navigationAppearance.tintColor = UIColor.white;
		// change color of navigation bar title
		navigationAppearance.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white];
		// set the style of status bar so it's clearly visible
		UIApplication.shared.statusBarStyle = .lightContent;
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

