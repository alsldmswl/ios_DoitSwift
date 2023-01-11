//
//  ViewController.swift
//  Tab
//
//  Created by eun-ji on 2023/01/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnMoveImageView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    
    @IBAction func btnMoveDataPickerView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
}

