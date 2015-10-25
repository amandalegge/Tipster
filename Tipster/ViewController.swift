//
//  ViewController.swift
//  Tipster
//
//  Created by Legge, Amanda on 10/24/15.
//  Copyright © 2015 Capital One. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var subtotalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        billField.text = ""
        subtotalLabel.text = "$0.00"
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.15, 0.18, 0.20]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billAmount = NSString(string: billField.text!).doubleValue
        var subtotalAmount = billAmount
        var tipAmount = billAmount * tipPercentage
        var totalAmount = billAmount + tipAmount
        
        subtotalLabel.text = String (format: "$%.2f", billAmount)
        tipLabel.text = String(format: "$%.2f", tipAmount)
        totalLabel.text = String(format: "$%.2f", totalAmount)
        
    }
    @IBAction func onTap(sender: AnyObject) {
    
        view.endEditing(true)
    
    }

}

