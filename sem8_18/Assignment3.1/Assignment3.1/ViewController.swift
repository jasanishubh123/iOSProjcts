//
//  ViewController.swift
//  Assignment3.1
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


	@IBAction func sm(_ sender: Any) {
		l1.font=l1.font.withSize(30)
	}


	@IBAction func md(_ sender: Any) {
		l1.font=l1.font.withSize(60)
	}

	@IBAction func lg(_ sender: Any) {
		l1.font=l1.font.withSize(90)
	}
}

