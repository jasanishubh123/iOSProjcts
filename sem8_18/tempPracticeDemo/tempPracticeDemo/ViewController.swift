//
//  ViewController.swift
//  tempPracticeDemo
//
//  Created by admin on 06/02/20.
//  Copyright © 2020 MSCICT. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

	var cityname:String=""
	@IBOutlet weak var dp: UIDatePicker!
	@IBOutlet weak var picker: UIPickerView!
	@IBOutlet weak var t2: UITextField!
    @IBOutlet weak var t1: UITextField!

	var city:[String]=["Surat","Rajkot","Baroda","Mumbai"]

	override func viewDidLoad() {

		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}


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
		cityname=city[pickerView.selectedRow(inComponent: 0)]

	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

		let df=DateFormatter()

		df.dateStyle=DateFormatter.Style.long
		let strDate=df.string(from: dp.date)



		if segue.identifier=="s1"{

			let obj=segue.destination as! dvcshow

			obj.name = t1.text!+" "+t2.text!

			obj.city=cityname

			obj.bdate=strDate



		}

	}
	




}

