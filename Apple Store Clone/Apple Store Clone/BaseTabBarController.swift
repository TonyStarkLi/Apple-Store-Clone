//
//  BaseTabBarController.swift
//  Apple Store Clone
//
//  Created by Botao Li on 5/4/19.
//  Copyright © 2019 Botao Li. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		setupViews()
		
	}
}

// MARK:- Setup Views
extension BaseTabBarController {
	
	fileprivate func setupViews() {
		viewControllers = [
			createNavController(viewController: UIViewController(), title: "Today", imageName: "today_icon"),
			createNavController(viewController: UIViewController(), title: "Apps", imageName: "apps"),
			createNavController(viewController: AppSearchController(), title: "Search", imageName: "search")
		]
	}
	
	fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
		let navController = UINavigationController(rootViewController: viewController)
		viewController.view.backgroundColor = .white
		viewController.navigationItem.title = title
		navController.navigationBar.prefersLargeTitles = true
		navController.tabBarItem.image = UIImage(named: imageName)
		navController.tabBarItem.title = title
		return navController
	}
}
