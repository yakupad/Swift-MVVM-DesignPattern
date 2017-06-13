//
//  ViewController.swift
//  MVVM
//
//  Created by Yakup AD on 12.06.2017.
//  Copyright © 2017 Yakup AD. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    var modelView: ViewModel!
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtSurname: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var btnSave: UIButton!
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblSurname: UILabel!
    @IBOutlet weak var lblPassword: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.txtName.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtName.resignFirstResponder()
        return true
    }
    
    @IBAction func btnSave_Click(_ sender: Any) {
        
        modelView = ViewModel(name:txtName.text!, surname:txtSurname.text!, password:txtPassword.text!, email:txtEmail.text!)
        
        let saveServerMessage :String = modelView.saveData()
        print(modelView.saveData())
        
        
      
            let alert = UIAlertController(title: "Uyarı", message: saveServerMessage , preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Tamam", style: UIAlertActionStyle.cancel))
            self.present(alert, animated: true){}
        
        lblName.text = modelView.name
        lblSurname.text = modelView.surname
        lblPassword.text = modelView.password
        lblEmail.text = modelView.email
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

