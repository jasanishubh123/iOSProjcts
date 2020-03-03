//
//  ViewController.swift
//  ass3.1
//
//  Created by admin on 28/01/20.
//  Copyright © 2020 MSCICT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var l1: UILabel!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


	@IBAction func btnred(_ sender: Any) {
		l1.textColor=UIColor.red
	}
	@IBAction func btnblue(_ sender: Any) {
		l1.textColor=UIColor.blue

	}
	@IBAction func btngreen(_ sender: Any) {
		l1.textColor=UIColor.green

	}
	@IBAction func btnlarge(_ sender: Any) {
		l1.font=UIFont(name:l1.font.fontName, size:40)

	}
	@IBAction func btnmed(_ sender: Any) {
		l1.font=UIFont(name: l1.font.fontName, size: 10)

	}
	@IBAction func btnsmall(_ sender: Any) {
		l1.font=UIFont(name: l1.font.fontName, size:5)

	}
}

