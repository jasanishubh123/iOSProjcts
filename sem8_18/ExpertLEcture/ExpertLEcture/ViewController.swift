//
//  ViewController.swift
//  ExpertLEcture
//
//  Created by admin on 24/02/20.
//  Copyright © 2020 MSCICT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var txtuser: UITextField!


	@IBOutlet weak var txtPass: UITextField!


	@IBAction func btnLogin(_ sender: Any) {
		UserDefaults.standard.set(true,forKey:"isUserLoggedIn")
		UserDefaults.standard.synchronize()
		UserDefaults.standard.set(self.txtuser.text,forKey:"name")
		let firstVC=self.storyboard?.instantiateViewController(withIdentifier: "DisplayName") as? DisplayName
		self.navigationController?.pushViewController(firstVC, animated:true)

	}
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}



}

