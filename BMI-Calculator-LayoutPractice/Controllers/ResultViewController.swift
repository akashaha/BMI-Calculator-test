//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Arman Akash on 4/10/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue : String?
    
//    @IBOutlet weak var bmiResult: UILabel!
    @IBOutlet weak var bmiResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
   //     let bmiResultLabel = UILabel()
//        bmiResultLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
        bmiResultLabel.text = bmiValue
//        view.addSubview(bmiResultLabel)
        

        // Do any additional setup after loading the view.
    }
    

    @IBAction func reCalculateButtonPreesed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
