//
//  ViewController.swift
//  TableViewDemo
//
//  Created by admin on 30/01/20.
//  Copyright © 2020 MSCICT. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{


	var city:[String]=["Surat","Valasad","Gujarat"]
	let cellReuseidentifier="cell"

	@IBOutlet weak var t1: UITextField!

	@IBOutlet weak var stv: UITableView!

	@IBAction func AdNew(_ sender: Any) {

		city.append(t1.text!)
		let indexPath=IndexPath(row: city.count-1, section: 0)
		stv.beginUpdates()
		stv.insertRows(at: [indexPath], with: .automatic)
		stv.endUpdates()
	}
	func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
		if editingStyle == .delete
		{

		let alert=UIAlertController(title:"My Alert",message:"Are you sure?",preferredStyle:UIAlertControllerStyle.alert)



		alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
		alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {(_:UIAlertAction!) in self .city.remove(at: indexPath.row)
			self.stv.beginUpdates()
			self.stv.deleteRows(at: [indexPath], with: .automatic)
			self.stv.endUpdates()
			}))
		self.present(alert,animated:true,completion:nil)
		}

	}
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
			return city.count
	}


	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell:UITableViewCell=tableView.dequeueReusableCell(withIdentifier: 	cellReuseidentifier)!
		cell.textLabel?.text=city[indexPath.row]
		return cell

	}
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		t1.text=city[indexPath.row]
	}
	override func viewDidLoad() {
		super.viewDidLoad()
		stv.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseidentifier)
	}





}

