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
        
    }
    
    @IBAction func showMessage(_ sender: Any) {
        
        let title = NSAttributedString(string: "Title", attributes: [.font:UIFont.systemFont(ofSize: 15)])
        
        let msg = NSMutableAttributedString(string: "aasdasd", attributes: [.font:UIFont.systemFont(ofSize: 14)])
        let attach = NSTextAttachment()
        attach.image = UIImage(named:"plus")
        msg.append(NSAttributedString(attachment: attach))
        msg.append(NSAttributedString(string: "asdasdasdasd asdasdasdasd asdasdasdasd asdasdasdasd asdasd"))
        
        AJMessage(title: title, message: msg)
            .show()
            .onDismiss { (message) in
                
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
