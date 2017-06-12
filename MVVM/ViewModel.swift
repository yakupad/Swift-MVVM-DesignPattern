//
//  ViewModel.swift
//  MVVM
//
//  Created by Yakup AD on 12.06.2017.
//  Copyright © 2017 Yakup AD. All rights reserved.
//

import Foundation

class ViewModel: NSObject {
  
    private var model:Model!
    
    init(name:String,pass:String,mail:String) {
        
        self.model = Model(nick: name, pass: pass, mail: mail)
        
    }
    
    var nick:String {
        get {
            return model.nick
        }
    }
    
    var pass:String {
        get {
            return model.pass
        }
    }
    
    var mail:String {
        get {
            return model.mail
        }
    }
    
    
    func submit() -> String {
        
        return model.saveServer()
        
    }
    
    
}
