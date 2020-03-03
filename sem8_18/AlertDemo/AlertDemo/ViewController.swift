//
//  ViewController.swift
//  AlertDemo
//
//  Created by admin on 30/01/20.
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
	@IBOutlet weak var l1: UILabel!
	@IBAction func showtext()
	{
		l1.text="Welcome to IOS.."
	}


	@IBAction func ShowAlert(_ sender: Any) {

		let AS=UIAlertController(title:"my action sheet",message:"select any one",preferredStyle: .actionSheet)
		AS.addAction(UIAlertAction(title:"Cancel",style: .cancel ,handler:nil))
		AS.addAction(UIAlertAction(title:"Delete",style: .destructive ,handler:nil))
		AS.addAction(UIAlertAction(title:"OK",style: .default ,handler:{( _: UIAlertAction!) in self .showtext()}))
		


		self.present(AS,animated:true,completion: nil)

	}
	override func viewDidAppear(_ animated: Bool) {
		let alert=UIAlertController(title:"My Alert",message:"Are you sure?",preferredStyle:UIAlertControllerStyle.alert)
		alert.addTextField(configurationHandler: {(t1) in t1.placeholder="Enter name";})
		alert.addTextField(configurationHandler: {(t2) in t2.placeholder="Enter password"; t2.isSecureTextEntry=true})

		alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))	
		alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {(_:UIAlertAction!) in self .l1.text=alert.textFields![0].text}))
		self.present(alert,animated:true,completion:nil)

	}

	@IBAction func newScreen(_ sender: Any) {
		let nvc=self.storyboard?.instantiateViewController(withIdentifier: "myVCID")
		self.present(nvc!,animated:true,completion: nil)
		

	}
}

