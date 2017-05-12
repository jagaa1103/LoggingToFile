//
//  ViewController.swift
//  ExampleLogger
//
//  Created by Enkhjargal Gansukh on 11/05/2017.
//  Copyright © 2017 Enkhjargal Gansukh. All rights reserved.
//

import UIKit
import LoggingToFile

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var textField: UITextField!
    @IBAction func writeClicked(_ sender: Any) {
        if let txt = textField.text {
            Logger.instance.write(text: txt)
        }
    }
}

