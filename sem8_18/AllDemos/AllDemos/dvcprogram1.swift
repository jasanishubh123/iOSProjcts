//
//  dvcprogram1.swift
//  AllDemos
//
//  Created by admin on 04/02/20.
//  Copyright © 2020 MSCICT. All rights reserved.
//

import UIKit

class dvcprogram1: UIViewController,UITableViewDataSource,UITableViewDelegate {

	var city:[String]=["Surat","Valasad","Gujarat"]
	let cellReuseidentifier="cell"
	var str:String=""
		@IBOutlet weak var lbl1: UILabel!
	    override func viewDidLoad() {
        super.viewDidLoad()

		lbl1.text="Welcome "+str
		

        // Do any additional setup after loading the view.
    }

	
    

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return city.count
	}


	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell:UITableViewCell=tableView.dequeueReusableCell(withIdentifier: 	cellReuseidentifier)!
		cell.textLabel?.text=city[indexPath.row]
		return cell

	}
}
