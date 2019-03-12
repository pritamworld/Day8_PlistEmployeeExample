//
//  ViewController.swift
//  Day9_PlistEmployeeExample
//
//  Created by moxDroid on 2019-03-12.
//  Copyright © 2019 moxDroid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.readInformationPlist()
    }
    
    func readInformationPlist() {
        if let bundlePath = Bundle.main.path(forResource: "Employee", ofType: "plist") {
            let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
            
            //print(dictionary!.description)
            
            print("----- Country List From PList File -----")
            let countryList = dictionary!["countries"] as! NSArray
            print(countryList[0])
            for c in countryList
            {
                print(c)
            }
            
            print("----- Employee List From PList File -----")
            
            let employeeList = dictionary!["employees"] as! NSArray
            
            for e in employeeList
            {
                let emp = e as! NSDictionary
                print("Employee ID      : \(emp["eid"]!)")
                print("Employee Name    : \(emp["enm"]!)")
                print("Employee Salary  : \(emp["salary"]!)")
                print("----------------------------------")
            }
        }
    }


}

