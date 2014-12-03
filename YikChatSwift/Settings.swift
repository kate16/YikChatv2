//
//  Settings.swift
//  YikChatSwift
//
//  Created by Q Kalantary on 12/2/14.
//  Copyright (c) 2014 Q Kalantary. All rights reserved.
//

import UIKit
import MultipeerConnectivity

class Settings: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var informativeLabel: UILabel!
    @IBOutlet weak var textInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        println("settings")
        textInput.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func save(sender: UIButton) {
        
        let msg = self.textInput.text
        if (msg != nil && msg != "" && msg.utf16Count < 20) {
            global.setName(msg)
            self.informativeLabel.text = "You have set your new username: " + msg; 
        } else {
            println("invalid name")
        }
        self.textInput.text = ""
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        self.view.endEditing(true);
        return false;
    }

}
