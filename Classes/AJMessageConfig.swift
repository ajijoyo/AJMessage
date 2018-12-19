//
//  AJMessageConfig.swift
//
//  Created for AJMessages in 2018
//  Created by Ajiejoy on 19/12/18 with love and sweat
//
//  Reach me on self.ajiejoy@gmail.com
//  Copyright © 2018 Ajiejoy. All rights reserved.
//
 

import UIKit

public struct AJMessageConfig {
    
    public static var shared = AJMessageConfig()
    
    public var titleFont : UIFont = UIFont.boldSystemFont(ofSize: 15)
    public var titleColor : UIColor = .white
    public var messageColor : UIColor = .white
    public var messageFont : UIFont = UIFont.systemFont(ofSize: 14)
    
}
