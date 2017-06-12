//
//  ViewController.swift
//  MVVM
//
//  Created by Yakup AD on 12.06.2017.
//  Copyright © 2017 Yakup AD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var modelView: ViewModel!
    
    @IBOutlet weak var nickLabel: UILabel!
    @IBOutlet weak var btnSave: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        modelView = ViewModel(name: "Yakup", pass: "******", mail: "yakupad@yandex.com")
        
        
    }
    
    @IBAction func btnSave_Click(_ sender: Any) {
        let saveServerMessage :String = modelView.submit()
        print(modelView.submit())
        nickLabel.text = modelView.nick
        
      
            let alert = UIAlertController(title: "Uyarı", message: saveServerMessage , preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Tamam", style: UIAlertActionStyle.cancel))
            self.present(alert, animated: true){}
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

