//
//  ViewController.swift
//  Cars
//
//  Created by Diego Dominguez Alvarez on 24/12/16.
//  Copyright © 2016 Diego Dominguez Alvarez. All rights reserved.
//

import UIKit

class carStore: UIViewController {
    
    private var x = 10
    var carObject:SeatIbizaFR?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        x += 1
        print("On viewDidLoad.....")
    }


    @IBAction func createCar(_ sender: Any) {
        
        
        print("On createCar.....")
        carObject = SeatIbizaFR()


        
    }
    
    @IBAction func showSpecs(_ sender: Any) {
        print("On showSpecs.....")
        if carObject != nil {
            print("Car color is \(carObject!.color),  its size is \(carObject?.size)")
            print(carObject!.maxKm)
            

        }

    }
    
    
    @IBAction func startEngine(_ sender: Any) {
        print("On startEngine.....")
        if carObject != nil {
            carObject!.start()
        }

    }
    
    @IBAction func speedUp(_ sender: Any) {
        print("On speedUp.....")

        if carObject != nil {
            carObject?.speeUp()
        }

    }
    
}

