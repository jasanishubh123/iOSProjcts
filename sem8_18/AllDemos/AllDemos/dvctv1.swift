//
//  dvctv1.swift
//  AllDemos
//
//  Created by admin on 04/02/20.
//  Copyright © 2020 MSCICT. All rights reserved.
//

import UIKit

class dvctv1: UIViewController,UITableViewDataSource,UITableViewDelegate{
	@IBOutlet weak var l1: UILabel!
	var str:String=""
	@IBOutlet weak var stv: UITableView!

//	var d:[String:String]=["🍎":"Apple","🍌":"Banana","🍓":"Strawberry","🍒":"Cherry"]

	@IBOutlet weak var t1: UITextField!

//var k:[String]=["Apple","Banana","Chikuu","Cherry"]

	var city:[String]=["Surat","Valasad","Gujarat"]
	let cellReuseidentifier="cell"
	var cityval1=""
    override func viewDidLoad() {
        super.viewDidLoad()
		stv.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseidentifier)
		l1.text="Hello "+str
    }


	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell:UITableViewCell=tableView.dequeueReusableCell(withIdentifier:"cell")!
		cell.textLabel?.text=city[indexPath.row]
		return cell

	}
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return city.count
	}

	@IBAction func btnadd(_ sender: Any) {
		//var indexPath:IndexPath
		if t1.text != ""
		{
			city.append(t1.text!)
			let indexPath=IndexPath(row:city.count-1, section:0)
			stv.beginUpdates()
			stv.insertRows(at:[indexPath], with:.automatic)
			stv.endUpdates()

		}
		else{

			let alert=UIAlertController(title: "Add table item", message: "Add City", preferredStyle: UIAlertControllerStyle.alert )
			alert.addTextField(configurationHandler: {(txtCity) in txtCity.placeholder="Enter City Name";})
			alert.addAction(UIAlertAction(title:"OK",style: .default,handler:{(_:UIAlertAction!) in  self.city.append(alert.textFields![0].text!)
				let indexPath=IndexPath(row:self.city.count-1, section:0)
				self.stv.beginUpdates()
				self.stv.insertRows(at:[indexPath], with:.automatic)
				self.stv.endUpdates()}))
			self.present(alert,animated:true,completion: nil)
		}
	}

	func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
		if editingStyle == .delete{

			let alert=UIAlertController(title:"Delete",message:"Are u Sure??",preferredStyle:UIAlertControllerStyle.alert)

			alert.addAction(UIAlertAction(title:"Cance",style:.cancel,handler:nil))
			alert.addAction(UIAlertAction(title:"Ok",style: .default ,handler:{(_:UIAlertAction!)in self
				.stv.beginUpdates()
				self .city.remove(at: indexPath.row)
				self .stv.deleteRows(at: [indexPath], with: .automatic)
				self .stv.endUpdates()

			}))

			self.present(alert,animated: true,completion: nil)
		}
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

		let city1 = city[indexPath.row]
		if city1 == "Surat"{

			let nvc=self.storyboard?.instantiateViewController(withIdentifier:"citytable" )
			self.present(nvc!,animated: true,completion: nil)
		}

		//l1.text=city[indexPath.row]
	}

}
