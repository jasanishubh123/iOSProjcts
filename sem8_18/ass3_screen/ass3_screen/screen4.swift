//
//  screen4.swift
//  ass3_screen
//
//  Created by admin on 29/01/20.
//  Copyright © 2020 MSCICT. All rights reserved.
//

import UIKit

class screen4: UIViewController {
var str:String=""
    override func viewDidLoad() {
        super.viewDidLoad()

        l1.text=str
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
	@IBOutlet weak var l1: UILabel!

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
