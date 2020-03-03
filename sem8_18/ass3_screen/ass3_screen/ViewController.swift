//
//  ViewController.swift
//  ass3_screen
//
//  Created by admin on 29/01/20.
//  Copyright © 2020 MSCICT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBOutlet weak var t1: UITextField!


	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier=="s1"{
			let screen1_obj=segue.destination as! scrren1
			screen1_obj.str=t1.text!
		}
		else if segue.identifier=="s2"
		{
			let screen1_obj=segue.destination as! screen2
			screen1_obj.str=t1.text!
		}
		else if segue.identifier=="s3"
		{
			let screen1_obj=segue.destination as! screen3
			screen1_obj.str=t1.text!
		}
		else if segue.identifier=="s4"
		{
			let screen1_obj=segue.destination as! screen4
			screen1_obj.str=t1.text!
		}
		else if segue.identifier=="s5"
		{
			let screen1_obj=segue.destination as! screen5
			screen1_obj.str=t1.text!
		}


	}
}

