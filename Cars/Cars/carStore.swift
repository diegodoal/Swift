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
    
    @IBOutlet weak var titleStore: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        x += 1
        print("On viewDidLoad.....")
        
        textView.text = "Initialized"
        
        titleStore.text = "In the car Store!!!!!"
    }


    @IBAction func createCar(_ sender: Any) {
        
        
        print("On createCar.....")
        carObject = SeatIbizaFR()

        textView.text = "On createCar....."

        
    }
    
    @IBAction func showSpecs(_ sender: Any) {
        print("On showSpecs.....")
        textView.text = "On showSpecs....."

        if carObject != nil {
            print("Car color is \(carObject!.color),  its size is \(carObject?.size)")
            print(carObject!.maxKm)
            textView.insertText("Car color is \(carObject!.color),  its size is \(carObject?.size)")
            

        }

    }
    
    
    @IBAction func startEngine(_ sender: Any) {
        print("On startEngine.....")
        textView.text = "On startEngine....."

        if carObject != nil {
            carObject!.start()
        }

    }
    
    @IBAction func speedUp(_ sender: Any) {
        print("On speedUp.....")
        textView.text = "On speedUp....."


        if carObject != nil {
            carObject?.speeUp()
        }

    }
    

    
    @IBAction func button1(_ sender: UIButton) {
        
    
        titleStore.text = "Button \(sender.tag) pressed"

        
        
    }
    
    
    @IBAction func eventTextField(_ sender: Any) {
        
        titleStore.text = "Text field edited"
    }
    
    
    
    @IBAction func sliderUI(_ sender: AnyObject) {
        let slider = (sender as! UISlider)
        textView.text = "\(slider.value)"
    }
    
    
    @IBAction func switchUI(_ sender: AnyObject) {
        let slider = (sender as! UISwitch)
        textView.text = "\(slider.isOn)"
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}

