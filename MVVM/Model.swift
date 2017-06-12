//
//  Model.swift
//  MVVM
//
//  Created by Yakup AD on 12.06.2017.
//  Copyright © 2017 Yakup AD. All rights reserved.
//

import Foundation

class Model: NSObject {
    
    var name:String!
    var surname:String!
    var password:String!
    var email:String!
    
    
    init(name:String,surname:String,password:String,email:String) {
        self.name = name
        self.password = password
        self.email = email
    }
    
    func saveServer() -> String {
        return "Tüm değişiklikler kaydedildi."
    }
    
}
