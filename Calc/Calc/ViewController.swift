//
//  ViewController.swift
//  Calc
//
//  Created by Diego Dominguez Alvarez on 26/12/16.
//  Copyright © 2016 Diego Dominguez Alvarez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelRsult: UILabel!
    
    var result:Float = 0
    var actualNum:Float = 0
    var actualOp:String = "="

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        labelRsult.text = "\(result)"
    }


    @IBAction func num(_ sender: UIButton) {
        
        //previous numbers          // Transform to float
        actualNum = actualNum * 10 + Float(Int(sender.titleLabel!.text!)!)//porque primero casting a int??
        
        labelRsult.text = "\(actualNum)"
        
    }
    
    
    @IBAction func clearButtton(_ sender: UIButton) {
        
        result = 0
        actualOp = "="
        actualNum = 0
        
        labelRsult.text = ("\(result)")
    }
    
    
    
    @IBAction func op(_ sender: UIButton) {
        
        
        switch actualOp {
        case "=":
            result = actualNum
        case "+":
            result = result + actualNum
        case "-":
            result = result - actualNum
        case "/":
            result = result / actualNum
        case "*":
            result = result * actualNum
        default:
            print("Error")
        }
        
        actualNum = 0
        
        labelRsult.text = ("\(result)")
        
        if(sender.titleLabel!.text == "="){
            result = 0
        }
        
        actualOp = sender.titleLabel!.text! as String
        
    }
    
    
    
    
    
    
}

