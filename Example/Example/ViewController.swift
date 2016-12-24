//
//  ViewController.swift
//  Example
//
//  Created by Diego Dominguez Alvarez on 24/12/16.
//  Copyright © 2016 Diego Dominguez Alvarez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("hola mundo")

        
        var x = 10
        var y = 20
        
        x = y
        
        y = x
        
        print("\(x)\(y)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

