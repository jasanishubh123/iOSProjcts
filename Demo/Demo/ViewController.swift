//
//  ViewController.swift
//  Demo
//
//  Created by admin on 03/03/20.
//  Copyright © 2020 MSCIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var lbl: UILabel!
	@IBOutlet weak var t1: UITextField!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


	@IBAction func show(_ sender: Any) {
		lbl.text=t1.text!
	}
}

