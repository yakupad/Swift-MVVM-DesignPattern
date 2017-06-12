//
//  Model.swift
//  MVVM
//
//  Created by Yakup AD on 12.06.2017.
//  Copyright © 2017 Yakup AD. All rights reserved.
//

import Foundation

class Model: NSObject {
    
    var nick:String!
    var pass:String!
    var mail:String!
    
    
    init(nick:String,pass:String,mail:String) {
        self.nick = nick
        self.pass = pass
        self.mail = mail
    }
    
    func saveServer() -> String {
        return "Tüm değişiklikler kaydedildi."
    }
    
}
