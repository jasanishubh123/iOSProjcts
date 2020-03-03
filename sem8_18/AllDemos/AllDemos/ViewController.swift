//
//  ViewController.swift
//  AllDemos
//
//  Created by admin on 04/02/20.
//  Copyright © 2020 MSCICT. All rights reserved.
//

import UIKit

class ViewController: UIViewController{



	
	@IBOutlet weak var txtname: UITextField!
	@IBOutlet weak var txtpass: UITextField!
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}



	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

		if segue.identifier == "program1"{
			if txtname.text == "admin" && txtpass.text == "admin"{
				let dvc1=segue.destination as! dvcprogram1
				dvc1.str=txtname.text!

			}
			else{
				let alert=UIAlertController(title:"Error",message:"Your Username or Password is Incorrect",preferredStyle:UIAlertControllerStyle.alert)
				alert.addAction(UIAlertAction(title:"OK" , style:.cancel,handler : nil ))
				self.present(alert,animated:true,completion: nil)

				
			}


		}

	}
	

}

