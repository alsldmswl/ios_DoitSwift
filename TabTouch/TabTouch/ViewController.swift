//
//  ViewController.swift
//  TabTouch
//
//  Created by eun-ji on 2023/01/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtMessage: UILabel!
    @IBOutlet weak var txtTabCount: UILabel!
    @IBOutlet weak var txtTouchCount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
        
        txtMessage.text = "Touches Began"
        txtTabCount.text = String(touch.tapCount)
        txtTouchCount.text = String(touches.count)
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
        
        txtMessage.text = "Touches Moved"
        txtTabCount.text = String(touch.tapCount)
        txtTouchCount.text = String(touches.count)
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
         
        txtMessage.text = "Touches Ended"
        txtTabCount.text = String(touch.tapCount)
        txtTouchCount.text = String(touches.count)
    }

}

