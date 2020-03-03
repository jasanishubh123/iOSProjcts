//
//  ViewController.swift
//  Ass_5
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

	@IBOutlet weak var t1: UITextField!
	@IBOutlet weak var t2: UITextField!
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

		if segue.identifier=="s1"{
			let dvc_obj = segue.destination as! dvc
			dvc_obj.str=t1.text! + " "+t2.text!

		}

	}


}

