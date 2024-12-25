//
//  ViewController.swift
//  Login
//
//  Created by 윤재형 on 12/24/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    @IBAction func login(_ sender: Any) {
        let id = idField.text!
        let password = passwordField.text!
        
    
        guard !(id.isEmpty || password.isEmpty) else{
            print("계정을 입력")
            return;
        }
        
        if id == "kxcoding" && password == "1234" {
            resultLabel.text = "Login Success!"
        }
        else{
            resultLabel.text = "Login Fail!"
        }
        
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

