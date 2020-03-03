//
//  ViewController.swift
//  testPicker
//
//  Created by admin on 07/02/20.
//  Copyright © 2020 MSCICT. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{

	@IBOutlet weak var pv: UIPickerView!
 let cellReuseIdentifier="cell"

	@IBOutlet weak var stt: UITableView!
	@IBOutlet weak var l1: UILabel!
	var city:[String]=["Surat","Mumbai","Navsari"]
	var myColor=UIColor(red:192/255,green:1,blue:1,alpha:0.5)




//
//	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//		let selectedcity=city[pv.selectedRow(inComponent: 0)]
//
//		let cell:UITableViewCell=tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)!
//		cell.textLabel?.text=selectedcity
//
//		return cell
//	}
//
//
//	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//		return city.count
//	}



	func numberOfComponents(in pickerView: UIPickerView) -> Int {
		return 1
	}

	func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {

		return city.count

	}

	func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {

		return city[row]

	}
	func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

		let selectedcity = city[pickerView.selectedRow(inComponent:0)]

		//l1.text=selectedcity
	}




	override func viewDidLoad() {
		super.viewDidLoad()
		//stt.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)

		// Do any additional setup after loading the view, typically from a nib.
	}



	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

