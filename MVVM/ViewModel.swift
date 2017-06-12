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
    
    init(name:String,surname:String,password:String,email:String) {
        
        self.model = Model(name: name, surname:surname, password: password, email: email)
        
    }
    
    var name:String {
        get {
            return model.name
        }
    }
    
    var surname:String {
        get {
            return model.surname
        }
    }
    
    var password:String {
        get {
            return model.password
        }
    }
    
    var email:String {
        get {
            return model.email
        }
    }
    
    func saveData() -> String {
        
        return model.saveServer()
        
    }
    
    
}
