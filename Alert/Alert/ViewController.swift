//
//  ViewController.swift
//  Alert
//
//  Created by eun-ji on 2023/01/06.
//

import UIKit

class ViewController: UIViewController {
    let imgOn = UIImage(named: "lamp_turnOn.png")
    let imgOff = UIImage(named: "lamp_turnOff.png")
    let imgRemove =  UIImage(named: "lamp_remove.png")
    
    var isLampOn = true
    
    @IBOutlet weak var lampImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lampImg.image = imgOn
    }
    
    @IBAction func btnLampOn(_ sender: UIButton) {
        if(isLampOn==true) {
            let lampOnAlert = UIAlertController(title: "warnning", message: "It's currently on", preferredStyle: UIAlertController.Style.alert)
            let onAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
            
            lampOnAlert.addAction(onAction)
            present(lampOnAlert, animated: true, completion: nil)
        }
        else{
            lampImg.image = imgOn
            isLampOn=true
        }
    }
    

    @IBAction func btnLampOff(_ sender: UIButton) {
        if isLampOn {
            let lampOffAlert = UIAlertController(title: "lamp off", message: "Do you want to turn off the lamp?", preferredStyle: UIAlertController.Style.alert)
            
            let offAction = UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: {
                ACTION in self.lampImg.image = self.imgOff
                self.isLampOn=false
            })
            let cancelAction = UIAlertAction(title: "No", style: UIAlertAction.Style.default, handler: nil)
            
            lampOffAlert.addAction(offAction)
            lampOffAlert.addAction(cancelAction)
        }
    }
    
    
    @IBAction func btnLampRemove(_ sender: UIButton) {
        let lampRemoveAlert = UIAlertController(title: "lamp remove", message: "Do you want to remove the lamp?", preferredStyle: UIAlertController.Style.alert)
        
        let offAction = UIAlertAction(title: "No, turn off the lamp", style: UIAlertAction.Style.default, handler: {ACTION in self.lampImg.image = self.imgOff
            self.isLampOn=false
        })
        let onAction = UIAlertAction(title: "No, turn on the lamp", style: UIAlertAction.Style.default) {
            ACTION in self.lampImg.image = self.imgOn
            self.isLampOn=true
        }
        let removeACtion = UIAlertAction(title: "Yes, Please", style: UIAlertAction.Style.destructive, handler: {ACTION in self.lampImg.image = self.imgRemove
            self.isLampOn=false
        })
        
        lampRemoveAlert.addAction(offAction)
        lampRemoveAlert.addAction(onAction)
        lampRemoveAlert.addAction(removeACtion)
        present(lampRemoveAlert, animated: true, completion: nil)
    }
    
}

