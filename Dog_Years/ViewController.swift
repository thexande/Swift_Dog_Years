//
//  ViewController.swift
//  Dog_Years
//
//  Created by Alexander Murphy on 1/12/15.
//  Copyright (c) 2015 Alexander Murphy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var d_days_label: UILabel!
    @IBOutlet weak var d_sec_label: UILabel!
    @IBOutlet weak var d_min_label: UILabel!
    @IBOutlet weak var d_year_label: UILabel!
    @IBOutlet weak var h_years: UITextField!
    
    //dog years in years
    func calcDoggieYears(dog_years: Int  ){
        var hyears = h_years.text.toInt()
        if hyears != nil{
            hyears = hyears! * 7
            d_year_label.text = toString(hyears!)
        } else{
            d_year_label.text = "enter #"
        }
    }
    //dog years in days
    func calcDoggieDays(dog_years: Int  ){
        var hyears = h_years.text.toInt()
        if hyears != nil{
            hyears = hyears! * 7
            d_days_label.text = toString(hyears!)
        } else{
            d_days_label.text = "enter #"
        }
    }

    //dog years in minutes
    func calcDoggieMinutes(dog_years: Int  ){
        var hyears = h_years.text.toInt()
        if hyears != nil{
            hyears = hyears! * 569400
            d_min_label.text = toString(hyears!)
        } else{
            d_min_label.text = "enter #"
        }
    }
    //dog years in seconds
    func calcDoggieSeconds(dog_years: Int  ){
        var hyears = h_years.text.toInt()
        if hyears != nil{
            hyears = hyears! * 634164000
            d_sec_label.text = toString(hyears!)
        } else{
            d_sec_label.text = "enter #"
        }
    }
   
    @IBAction func calc(sender: AnyObject) {
        var hyears = h_years.text.toInt()
        
        calcDoggieYears(hyears!)
        calcDoggieDays(hyears!)
        calcDoggieMinutes(hyears!)
        calcDoggieSeconds(hyears!)
        if hyears != nil{
        } else{
            d_year_label.text = "enter #"
        }
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

