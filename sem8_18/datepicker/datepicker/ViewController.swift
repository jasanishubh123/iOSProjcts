//
//  ViewController.swift
//  datepicker
//
//  Created by admin on 28/01/20.
//  Copyright © 2020 MSCICT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var dp: UIDatePicker!
	@IBOutlet weak var l1: UILabel!
	override func viewDidLoad() {


		super.viewDidLoad()
		let imgname = "download.jpeg"
		let image = UIImage(named :imgname)

		let imgview=UIImageView(image:image!)
		imgview.frame = CGRect(x:0,y:0,width:200,height:200)
		view.addSubview(imgview)
		view.bringSubview(toFront:l1)

	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


	@IBAction func dpchange(_ sender: Any) {
		let dateFormatter = DateFormatter()
		dateFormatter.dateStyle=DateFormatter.Style.long
		let strDate=dateFormatter.string(from: dp.date)

		l1.text=strDate
	}
}

