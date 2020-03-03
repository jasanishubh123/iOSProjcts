//
//  AllFormController.swift
//  AllDemos
//
//  Created by admin on 06/02/20.
//  Copyright © 2020 MSCICT. All rights reserved.
//

import UIKit

class AllFormController: UIViewController ,UIPickerViewDelegate,UIPickerViewDataSource
{

	@IBOutlet weak var txtName: UITextField!
	var cityval=""
	var city:[String]=["surat","rajkot","bharuch"]
    override func viewDidLoad() {
        super.viewDidLoad()



   }
	@IBOutlet weak var dpControl: UIDatePicker!
	func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
			return city.count
		}
	func numberOfComponents(in pickerView: UIPickerView) -> Int {
		return 1
	}
	func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		return city[row]
	}
	func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
		let selectCity = city[pickerView.selectedRow(inComponent: 0)]
		cityval = selectCity
	}
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier=="formShow"
		{
			let dvcform = segue.destination as! dvcShowForm
			dvcform.name = txtName.text!
			dvcform.city=cityval
			let dateFormatter=DateFormatter()
			dateFormatter.dateStyle=DateFormatter.Style.long
			let strDate=dateFormatter.string(from: dpControl.date)
			dvcform.date=strDate


			
		}
	}

}
