//
//  SecondViewController.swift
//  Swift$tableView
//
//  Created by taiki on 2018/11/02.
//  Copyright © 2018年 taiki. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var box = String()

    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = box

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
