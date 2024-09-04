//
//  ViewController.swift
//  Login
//
//  Created by 윤재형 on 8/28/24.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var idField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    
    
    //아이디, 비밀번호가 입력 안됐을 시 알림 창 띄우기
    func showAlert(message: String){
        
        let alert = UIAlertController(title: "알림", message: message, preferredStyle: .alert)
        
        let oksign = UIAlertAction(title: "확인", style: .default)
        
        alert.addAction(oksign)
        present(alert, animated: true)
        
        return
    }
    
    
    
    
    @IBAction func login(_ sender: Any) {
        
//        let id = idField.text!
        guard let id = idField.text, !id.isEmpty else{
            showAlert(message: "아이디를 입력하세요")
            return
        }
        
        //let password = passwordField.text!
        guard let password = passwordField.text, !password.isEmpty else{
            showAlert(message: "비밀번호를 입력하세요")
            return
        }

        if id == "kxcoding" && password == "1234"{
            resultLabel.text = "로그인 성공!"
        }
        else {
            resultLabel.text = "로그인 실패!"
        }
    }
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // 화면에 표시된 다음에 자동으로 호출되는 메소드
    // 콜백 메소드
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // 자동으로 커서 이동, 키보드 표시
        // 인스펙터에서 keyboard type 변경도 해주기
        idField.becomeFirstResponder()
    }

}

