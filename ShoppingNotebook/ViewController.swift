//
//  ViewController.swift
//  ShoppingNotebook
//
//  Created by MAC on 2018/4/9.
//  Copyright © 2018年 MAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stepper_1: UIStepper!
    @IBOutlet weak var stepper_2: UIStepper!
    @IBOutlet weak var stepper_3: UIStepper!
    @IBOutlet weak var stepper_4: UIStepper!
    @IBOutlet weak var count_1: UILabel!
    @IBOutlet weak var count_2: UILabel!
    @IBOutlet weak var count_3: UILabel!
    @IBOutlet weak var count_4: UILabel!
    @IBOutlet weak var totalPrice: UILabel!
    @IBAction func stepperValueChanged(_ sender: Any) {
        let senderUI = sender as? UIStepper
        if senderUI == stepper_1{
            count_1.text = "\(stepper_1.value)"
        }
        else if senderUI == stepper_2{
            count_2.text = "\(stepper_2.value)"
        }
        else if senderUI == stepper_3{
            count_3.text = "\(stepper_3.value)"
        }
        else if senderUI == stepper_4{
            count_4.text = "\(stepper_4.value)"
        }
        let data1 = stepper_1.value*20000+stepper_2.value*15000
        let data2 = stepper_3.value*22000+stepper_4.value*17000
        totalPrice.text = "\(data1+data2)"
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

