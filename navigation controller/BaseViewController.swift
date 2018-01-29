//
//  BaseViewController.swift
//  Swift-iOS-Example
//
//  Created by Vahid Amiri Motlagh on 1/28/18.
//  Copyright © 2018 UNIVER30t Network. All rights reserved.
//	Swift version: 4.0

import UIKit

class BaseViewController: UIViewController {

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated);
		
		self.view.backgroundColor = UIColor.white;
		
		let title = self.getTitle();
		if(title != nil) {
			self.title = title;
		} else {
			self.addBannerImageToNavigationBar();
		}
		
		self.addNavigationButtons();
		
		var backButtonText = "Back";
		if(shouldOmmitBackNavigationButtonText()) {
			backButtonText = "";
		}
		self.navigationItem.backBarButtonItem = UIBarButtonItem(title: backButtonText, style: .plain, target: nil, action: nil);
	}
	
	func addBannerImageToNavigationBar() {
		let bannerImage = UIImage(named: "logotype")!;
		let logoContainer = UIView(frame: CGRect(x: 0, y: 0, width: 120, height: 30));
		let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 120, height: 30));
		imageView.contentMode = .scaleAspectFit;
		imageView.image = bannerImage;
		logoContainer.addSubview(imageView);
		self.navigationItem.titleView = logoContainer;
	}
	
	func getTitle() -> String? {
		return nil;
	}
	
	func addNavigationButtons() {
		
	}
	
	func shouldOmmitBackNavigationButtonText() -> Bool {
		return false;
	}
}
