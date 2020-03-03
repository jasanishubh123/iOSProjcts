//
//  dvc.swift
//  Ass_5
//
//  Created by admin on 29/01/20.
//  Copyright © 2020 MSCICT. All rights reserved.
//

import UIKit

class dvc: UIViewController {

	var str:String=""
	override func viewDidLoad() {
		l1.text="Welcome"+str

	}
	@IBOutlet weak var l1: UILabel!
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}
