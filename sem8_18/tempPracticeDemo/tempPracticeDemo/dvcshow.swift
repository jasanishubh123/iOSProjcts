//
//  dvcshow.swift
//  tempPracticeDemo
//
//  Created by admin on 07/02/20.
//  Copyright © 2020 MSCICT. All rights reserved.
//

import UIKit

class dvcshow: UIViewController {

	@IBOutlet weak var ldate: UILabel!
	@IBOutlet weak var lcity: UILabel!
	@IBOutlet weak var lname: UILabel!
	var name:String=""
	var bdate:String=""
	var city:String=""
    override func viewDidLoad() {
        super.viewDidLoad()

		ldate.text=bdate
		lname.text=name
		lcity.text=city


    }


}
