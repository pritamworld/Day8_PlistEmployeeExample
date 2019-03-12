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
            
            print(dictionary!.description)
        }
    }


}

