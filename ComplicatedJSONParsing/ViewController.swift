//
//  ViewController.swift
//  ComplicatedJSONParsing
//
//  Created by Mohamed on 9/24/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
            let data = """
            
            {
                "places":[
                
                {
                "name" : "Mohamed",
                "email" : "mo7med9878@gmail.com"
                "Age" : 22
                
                },
                {
                
                "name" : "Mohamed",
                "email" : "mo7med9878@gmail.com",
                "Age" : 22
                
                }
                
                ]
                
        }
""".data(using: .utf8)
    
        let decode = try! JSONDecoder().decode([String:[User]].self, from: data!)
        
        let resylt = decode["places"]
        print(resylt)
        
    }


}


struct User : Decodable{
    
    var name:String
    var email:String
    var Age:Int
    
}

