//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSliderOut: UISlider!
    
    @IBOutlet weak var weightSliderOut: UISlider!
    
    @IBAction func heightSlider(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weightLabel.text = "\(String(format: "%.0f", sender.value))kg"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculate(_ sender: UIButton) {
        let height = heightSliderOut.value
        let weight = weightSliderOut.value
        
        let bmi = weight / (height*height)
        
        let result = String(format: "%.0f", bmi)
        
        let secondViewController = ResultViewController()
        secondViewController.bmiLabel.text = result
        
        self.present(secondViewController, animated: false, completion: nil)
    }
    
}

