//
//  ViewController.swift
//  Slide and swicth
//
//  Created by Cyberjaya 4 iTrain on 13/11/2017.
//  Copyright © 2017 ada_yc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mySliderValue: UILabel!
    
    @IBOutlet var mySlider: UISlider!
    
    @IBOutlet var mySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderMoved(_ sender: Any) {
        
        //Label text must be a String datatype
          self.mySliderValue.text = String(format:"%.1f", self.mySlider.value)
        
        
    }
    
    
    @IBAction func switchChanged(_ sender: Any) {
        if self.mySwitch.isOn {
            //on
            self.mySlider.isHidden = false
            self.mySliderValue.isHidden = false
            
            self.myPanel.isHidden = false
        }
        
        else {
            //off
            self.mySlider.isHidden = true
            self.mySliderValue.isHidden = true
             self.myPanel.isHidden = true        }
    }
    
    @IBOutlet var myPanel: UIView!
    
}

