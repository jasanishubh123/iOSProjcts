//
//  dvctable.swift
//  tempPracticeDemo
//
//  Created by admin on 07/02/20.
//  Copyright © 2020 MSCICT. All rights reserved.
//

import UIKit

class dvctable: UIViewController,UITableViewDelegate,UITableViewDataSource {



	@IBOutlet weak var stv: UITableView!
	var city:[String]=["Surat","Rajkot","Punjab"]
    override func viewDidLoad() {
        super.viewDidLoad()

		stv.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

    }

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

		return city.count

	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")!
		cell.textLabel?.text=city[indexPath.row]
		return cell


	}
	func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {


		if editingStyle == .delete{
			let alert=UIAlertController(title: "Delete", message: "Are You Sure", preferredStyle: UIAlertControllerStyle.alert)

			alert.addAction(UIAlertAction(title: "Cancel", style:.cancel, handler:nil))

			alert.addAction(UIAlertAction(title: "OK", style: .default, handler:{(_:UIAlertAction!) in self.city.remove(at: indexPath.row)
				self.stv.beginUpdates()
				self.stv.deleteRows(at:[indexPath], with:.automatic)
				self.stv.endUpdates()

				}))
			self.present(alert, animated:true, completion: nil)


		}





	}

	@IBAction func Btnadd(_ sender: Any) {

		let alert=UIAlertController(title: "Add", message: "New City", preferredStyle: UIAlertControllerStyle.alert)


		alert.addTextField(configurationHandler: {(txtname) in txtname.placeholder="Enter City Here"})

		alert.addAction(UIAlertAction(title: "Save", style: .default, handler: {(_:UIAlertAction!) in self.city.append(alert.textFields![0].text!)

			let indexPath=IndexPath(row:self.city.count-1, section:0)
			self.stv.beginUpdates()
			self.stv.insertRows(at:[indexPath], with: .automatic)
			self.stv.endUpdates()
		}))
		self.present(alert, animated: true, completion: nil)

	}


    
}
