//
//  ViewController.swift
//  AJMessage
//
//  Created by ajijoyo on 12/19/2018.
//  Copyright (c) 2018 ajijoyo. All rights reserved.
//

import UIKit
import AJMessage

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showMessage(_ sender: Any) {
        AJMessages.show(title: "qweqweqwe qewq eqwe q", message: "asdasd adsasd adsasd asdasdasd asdasd asdasd asdasdasd",position:.top).onHide {
            print("did dissmiss")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

