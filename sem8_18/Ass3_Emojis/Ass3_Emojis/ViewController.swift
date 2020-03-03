//
//  ViewController.swift
//  Ass3_Emojis
//
//  Created by admin on 29/01/20.
//  Copyright © 2020 MSCICT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	var d:[String:String]=["😂":"LAUGHING","😡":"ANGER","😎":"SMART","🍎":"APPLE","🍌":"BANANA"]

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


	@IBOutlet weak var l1: UILabel!
	@IBAction func laugh(_ sender: Any) {

		for (i,v) in d{
			if i=="😂"{
				l1.text=v
			}
		}

	}
	@IBAction func anger(_ sender: Any) {
		for (i,v) in d{
			if i=="😡"{
				l1.text=v
			}
		}
	}
	@IBAction func smart(_ sender: Any) {
		for (i,v) in d{
			if i=="😎"{
				l1.text=v
			}
		}
	}
	@IBAction func apple(_ sender: Any) {
		for (i,v) in d{
			if i=="🍎"{
				l1.text=v
			}
		}
	}
	@IBAction func banana(_ sender: Any) {
		for (i,v) in d{
			if i=="🍌"{
				l1.text=v
			}
		}
	}
}

