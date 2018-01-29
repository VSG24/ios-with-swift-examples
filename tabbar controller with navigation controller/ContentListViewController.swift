//
//  ViewController.swift
//  USwift-iOS-Example
//
//  Created by Vahid Amiri Motlagh on 1/26/18.
//  Copyright © 2018 UNIVER30t Network. All rights reserved.
//	Swift version: 4.0

import UIKit

class ContentListViewController: BaseViewController {

	override func viewDidLoad() {
		super.viewDidLoad();
	}
	
	override func addNavigationButtons() {
		let addBtn = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: .addButtonPressed);
		self.navigationItem.leftBarButtonItem = addBtn;
		
		self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil);
	}
	
	// methods that get called when a selector executes an action
	@objc
	func addButtonPressed(_ sender: AnyObject) {
		// push a new page in the stack and make it visible
		let vc = ContentViewController();
		self.navigationController?.pushViewController(vc, animated: true);
	}
}

fileprivate extension Selector {
	static let vc = ContentListViewController.self;
	// define selectors
	static let addButtonPressed = #selector(vc.addButtonPressed(_:))
}

