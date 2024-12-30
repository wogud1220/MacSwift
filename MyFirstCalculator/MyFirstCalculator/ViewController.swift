//
//  ViewController.swift
//  MyFirstCalculator
//
//  Created by 윤재형 on 12/21/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var firstOperandField: UITextField!
    @IBOutlet weak var secondOperandField: UITextField!
    
    
    //버튼의 보여주는 역할 (+, -, *, /)
    @IBOutlet weak var operatorButton: UIButton!
    
    
    
    func showAlert(message: String){
        let alert = UIAlertController(title: "알림", message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "확인", style: .default)
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
    
    
    //버튼의 변화하는 액션
    @IBAction func selectOperator(_ sender: Any) {
        
        //액션시트 추가
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        //plus 추가하기
        let plusAction = UIAlertAction(title: "+ (더하기)", style: .default){ _ in
            self.operatorButton.setTitle("+", for: .normal)
        }
        actionSheet.addAction(plusAction)
        
        
        //minus 추가하기
        let minusAction = UIAlertAction(title: "- (빼기)", style: .default){ _ in
            self.operatorButton.setTitle("-", for: .normal)
        
        }
        actionSheet.addAction(minusAction)
        
        
        //곱하기 추가하기
        let multiplyAction = UIAlertAction(title: "* (곱하기)", style: .default){ _ in
            self.operatorButton.setTitle("*", for: .normal)
            
        }
        actionSheet.addAction(multiplyAction)
        
        
        //나누기 추가하기
        let divideAction = UIAlertAction(title: "/ (나누기)", style: .default){ _ in
            
            self.operatorButton.setTitle("/", for: .normal)
        }
        actionSheet.addAction(divideAction)
        
        
        //화면에 표현
        present(actionSheet, animated: true , completion: nil)
        
        }
    
    // 결과 보여주는 창
    @IBOutlet weak var resultLable: UILabel!
    
    //계산 버튼 누르면 나오는 액션
    @IBAction func calculate(_ sender: Any) {
        
        guard let text = firstOperandField.text, let a = Int(text) else{
            showAlert(message: "첫번째 값을 입력해주세요")
            
            return
        }
        
        guard let text = secondOperandField.text, let b = Int(text) else{
            showAlert(message: "두번째 값을 입력해주세요.")
            return
        }
        //binding 성공, op가 ?가 아닐 경우 실행
        guard let op = operatorButton.title(for: .normal), op != "?" else {
            
            showAlert(message: "연산자를 입력해주세요")
            return
        }
        
        var result: Int? = nil
        
        switch op {
            case "+":
                result = a + b
            case "-":
                result = a - b
            case "*":
                result = a * b
            case "/":
                result = a / b
        default: break
        }
        
        
        guard let result else {
            return
        }
        
        
        resultLable.text = String(result)
        
    
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

