
//
//  ViewController.swift
//  pickerView
//
//  Created by admin on 28/01/20.
//  Copyright © 2020 MSCICT. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIPickerViewDelegate,UIPickerViewDataSource,UITableViewDataSource,UITableViewDelegate{

//	var city:[[String]]=[["Surat","Rajkot","Mumbai"],["Riksha","Bike","Taxi"]]

	var mycolor=UIColor(red:12/255,green:1,blue:1,alpha:0.5)

	var city:[String]=["Surat","Rajkot","Mumbai"]

	var add:[String]=[]

	 let cellReuseIdentifier="cell"


	@IBOutlet weak var stt: UITableView!

	override func viewDidLoad() {
		super.viewDidLoad()
		picker.backgroundColor=mycolor

	}

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return city.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		//let selectedcity = city[picker.selectedRow(inComponent:0)]


		let cell:UITableViewCell=tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)!
		cell.textLabel?.text=add[indexPath.row]

		return cell
	}

	@IBOutlet weak var l1: UILabel!
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	func numberOfComponents(in pickerView: UIPickerView) -> Int {
		return 1
	}

	func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {

			return city.count

//		return city.count+1
	}
	func pickerView(_ pickerView: UIPickerView, titleForRow  row: Int,forComponent component:Int) -> String? {


			return city[row]


//			return city[component][row]
	}

	func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

		let selectedcity = city[pickerView.selectedRow(inComponent:0)]

		add.append(selectedcity)
	}

	

	@IBOutlet weak var picker: UIPickerView!

}

