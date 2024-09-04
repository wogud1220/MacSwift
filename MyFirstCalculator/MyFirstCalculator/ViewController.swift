//
//  ViewController.swift
//  MyFirstCalculator
//
//  Created by 윤재형 on 8/27/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstOperandField: UITextField!
    
    @IBOutlet weak var secondOperandField: UITextField!
    
    
    func showAlert( message: String, title: String = "알림"){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    
    //? 버튼 액션
    @IBAction func selectOperator(_ sender: Any) {
        //껍데기
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        //액션
        let plusAction = UIAlertAction(title: "+ (더하기)", style: .default) { _ in
            //액션 선택 시 버튼 제목 바꾸기
            self.operatorButton.setTitle("+", for: .normal)
        }
        //액션 시트에 추가
        actionSheet.addAction(plusAction)
        
        
        let minusAction = UIAlertAction(title: "- (빼기)", style: .default) { _ in
            //액션 선택 시 버튼 제목 바꾸기
            self.operatorButton.setTitle("-", for: .normal)
        }
        actionSheet.addAction(minusAction)
        
        let multiplyAction = UIAlertAction(title: "* (곱하기)", style: .default) { _ in
            //액션 선택 시 버튼 제목 바꾸기
            self.operatorButton.setTitle("*", for: .normal)
        }
        actionSheet.addAction(multiplyAction)
        
        let divideAction = UIAlertAction(title: "/ (나누기)", style: .default) { _ in
            //액션 선택 시 버튼 제목 바꾸기
            self.operatorButton.setTitle("/", for: .normal)
        }
        actionSheet.addAction(divideAction)
        
        
        present(actionSheet, animated: true)
        
            
    }
    
    @IBOutlet weak var operatorButton: UIButton!
    
    //결과 라벨
    @IBOutlet weak var resultLabel: UILabel!
    
    //계산 버튼
    @IBAction func calculate(_ sender: Any) {
        
        //let a = Int(firstOperandField.text!)!
        
        // 값이 있는지 없는지 먼저 추출, 정수로 바꿀 수 있는지 추출
        guard let text = firstOperandField.text, let a = Int(text) else{
            showAlert(message: "값을 입력해주세요.", title: "오류")
            return}
        

        //let b = Int(secondOperandField.text!)!
        
        guard let text = secondOperandField.text, let b = Int(text) else{
            showAlert(message: "값을 입력해주세요.")
            return}
        
        
        
        guard let op = operatorButton.title(for: .normal),
        op != "?"
        else{
            showAlert(message: "연사자를 선택해주세요.")
            return}

        var result : Int? = nil
        
        switch op{
            case "+":
                result = a + b
            case "-":
                result = a - b
            case "*":
                result = a * b
            case "/":
                result = a / b
            default:
            showAlert(message: "연산자를 선택해주세요")
            break
//            let alert = UIAlertController(title: "알림", message: "연산자를 선택해주세요", preferredStyle: .alert)
//            let okAction = UIAlertAction(title: "확인", style: .default)
//            
//            alert.addAction(okAction)
//            present(alert, animated: true)
        }
        
        guard let result = result else{return}
        resultLabel.text = String(result)
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

