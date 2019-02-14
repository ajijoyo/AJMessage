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
    
    var images : [AJMessage.Status : UIImage] = [:]
    var backgrounColors : [AJMessage.Status : UIColor] = [:]
    
    
    init() {
        let bundle = Bundle(for: AJMessage.self)
        let url = bundle.resourceURL!.appendingPathComponent("AJMessage.bundle")
        let resourceBundle = Bundle(url: url)
        
        for status in AJMessage.Status.allCases {
            switch status {
            case .info:
                images[status] = UIImage(named: "info", in: resourceBundle, compatibleWith: nil)
                backgrounColors[status] = UIColor(red: CGFloat(241.0/255.0), green: CGFloat(196.0/255.0), blue: CGFloat(15.0/255.0), alpha: 1)
            case .error:
                images[status] = UIImage(named: "error", in: resourceBundle, compatibleWith: nil)
                backgrounColors[status] = UIColor(red: CGFloat(231.0/255.0), green: CGFloat(76.0/255.0), blue: CGFloat(60.0/255.0), alpha: 1)
            case .success:
                images[status] = UIImage(named: "success", in: resourceBundle, compatibleWith: nil)
                backgrounColors[status] = UIColor(red: CGFloat(46.0/255.0), green: CGFloat(204.0/255.0), blue: CGFloat(113.0/255.0), alpha: 1)
            }
        }
    }
    
    
    public mutating func setImage(_ image:UIImage?, status: AJMessage.Status) {
        guard let img = image else { return }
        images[status] = img
    }
    
    public mutating func setBackgroundColor(_ color:UIColor?, status: AJMessage.Status) {
        guard let clr = color else { return }
        backgrounColors[status] = clr
    }
}
