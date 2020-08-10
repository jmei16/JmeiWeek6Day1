//
//  ViewController.swift
//  Jia Ming_M_Storing_Default_Values_Exercise
//
//  Created by Jia Ming Mei on 8/10/20.
//  Copyright © 2020 Jia Ming Mei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func mySaveButton(_ sender: Any) {
        UserDefaults.standard.set(mySerialNumber.text, forKey: "Text")
        UserDefaults.standard.set(mySwitch.isOn, forKey: "Switch")
        UserDefaults.standard.set(mySerialNumber.text, forKey: "Text")
    }
    
    @IBAction func myLoadButton(_ sender: Any) {
        mySwitch.isOn = UserDefaults.standard.bool(forKey: "Switch")
        mySlider.value = UserDefaults.standard.float(forKey: "Slider")
        mySerialNumber.text = UserDefaults.standard.string(forKey: "Text")
    }
    
    @IBAction func myDeleteButton(_ sender: Any) {
        mySwitch.isOn = true
        mySlider.value = 0.5
        mySerialNumber.text = ""
    }
    
    @IBOutlet var mySerialNumber: UITextView!
    
    @IBOutlet var mySlider: UISlider!
    
    @IBOutlet var mySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

