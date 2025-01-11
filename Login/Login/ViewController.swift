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
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "알림", message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "확인", style: .default)
        alert.addAction(okButton)
        present(alert, animated: true)
        
    }
    @IBAction func login(_ sender: Any) {
        //nil 이거나 isempty가 맞다면
        guard let id = idField.text , !id.isEmpty else {
            showAlert(message: "ID를 입력해주세요")
            return
        }
        
        guard let password = passwordField.text, !password.isEmpty else {
            showAlert(message: "비밀번호를 입력해주세요")
            return
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
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        idField.becomeFirstResponder()        //키보드 표시
    }


}

