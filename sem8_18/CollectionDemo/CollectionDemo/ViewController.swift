//
//  ViewController.swift
//  CollectionDemo
//
//  Created by admin on 28/02/20.
//  Copyright © 2020 MSCIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{

	var fruits:[String]=["Banana","Apple","Chiku","Mango"]


	@IBOutlet weak var cv: UICollectionView!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	func numberOfSections(in collectionView: UICollectionView) -> Int {
		return 1
	}
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return fruits.count
	}
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cvc", for: indexPath) as! cvc
		cell.l1.text = fruits[indexPath.row]

		return cell

	}


}

