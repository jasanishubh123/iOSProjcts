//
//  dvcShowForm.swift
//  AllDemos
//
//  Created by admin on 06/02/20.
//  Copyright © 2020 MSCICT. All rights reserved.
//

import UIKit

class dvcShowForm: UIViewController {

	var name=""
	var city=""
	var date=""
    override func viewDidLoad() {
        super.viewDidLoad()
		lblName.text=name
		lblCity.text=city
		lblDate.text=date
       
    }


	@IBOutlet weak var lblName: UILabel!

	@IBOutlet weak var lblCity: UILabel!

	@IBOutlet weak var lblDate: UILabel!
}
