//
//  AppSearchController.swift
//  Apple Store Clone
//
//  Created by Botao Li on 5/4/19.
//  Copyright © 2019 Botao Li. All rights reserved.
//

import UIKit

class AppSearchController: UICollectionViewController {
	
	fileprivate let cellId = "cellId"
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	init() {
		super.init(collectionViewLayout: UICollectionViewFlowLayout())
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

extension AppSearchController {
	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
		return cell
	}
	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 5
	}
}

extension AppSearchController {
	fileprivate func setupUI() {
		
	}
}
