//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var bmiValue = "0.0"
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func heightSliderSelected(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        
        heightLabel.text = "\(height)m"
    }
    
    
    @IBAction func weightSliderSelected(_ sender: UISlider) {
        
        let weight = String(format: "%.2f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    
    @IBAction func calculateButtonPreesed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi =  weight/pow(height, 2)
        bmiValue = String(format: "%.1f", bmi)
        
        self.performSegue(withIdentifier: "valuePass", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "valuePass" {
            let destinationVC = segue.destination as? ResultViewController
            destinationVC!.bmiValue = bmiValue
            
        }
    }
    
    
}

