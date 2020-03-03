//
//  ViewController.swift
//  alertDwmoByShubh
//
//  Created by admin on 01/02/20.
//  Copyright © 2020 MSCICT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()



	}
	override func viewDidAppear(_ animated: Bool) {
		let alert=UIAlertController(title:"Hello World",message:"Are You SUre?",preferredStyle:UIAlertControllerStyle.alert)

		alert.addTextField(configurationHandler: {(t1) in t1.placeholder="Enter Username";})

		alert.addTextField(configurationHandler: {(t2) in t2.placeholder =
			"Enter Pasword"; t2.isSecureTextEntry=true})


		alert.addAction(UIAlertAction(title:"Cancel",style:.cancel,handler:{(_ :UIAlertAction!) in self.l1.text=""}))
		alert.addAction(UIAlertAction(title:"Ok",style:.default,handler:{(_ : UIAlertAction!) in self.l1.text=alert.textFields![0].text}))
		self.present(alert,animated:true,completion: nil)
	}

	@IBOutlet weak var l1: UILabel!
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func btnalert(_ sender: Any) {





		let alert=UIAlertController(title:"Hello World",message:"Are You SUre?",preferredStyle:UIAlertControllerStyle.alert)

		alert.addTextField(configurationHandler: {(t1) in t1.placeholder="Enter Username";})

		alert.addTextField(configurationHandler: {(t2) in t2.placeholder =
		"Enter Pasword"; t2.isSecureTextEntry=true})


		alert.addAction(UIAlertAction(title:"Cancel",style:.cancel,handler:{(_ :UIAlertAction!) in self.l1.text=""}))
		alert.addAction(UIAlertAction(title:"Ok",style:.default,handler:{(_ : UIAlertAction!) in self.l1.text=alert.textFields![0].text}))
		self.present(alert,animated:true,completion: nil)
	}
	@IBAction func showtext(){
		l1.text="Welcome To IOS"
	}

	@IBAction func btnGo(_ sender: Any) {

		let nvc=self.storyboard?.instantiateViewController(withIdentifier: "myvcid")
		self.present(nvc!,animated: true,completion: nil)
		
	}
	@IBAction func showAction(_ sender: Any) {

		let actionsheet=UIAlertController(title:"My Action Sheet",message:"Select Any One",preferredStyle:.actionSheet)
		actionsheet.addAction(UIAlertAction(title:"Cancel",style:.cancel,handler:nil ))

		actionsheet.addAction(UIAlertAction(title:"Ok",style:.default,handler:{(_:UIAlertAction!) in self.showtext()} ))

		actionsheet.addAction(UIAlertAction(title:"Delete",style:.destructive,handler:nil ))
		self.present(actionsheet,animated: true,completion: nil)
	}
}

