//
//  ViewController.swift
//  HelloSwiftProject
//
//  Created by 윤재형 on 12/19/24.
//

import UIKit

class ViewController: UIViewController {

    //outlet은 property로 연결
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBOutlet weak var inputField: UITextField!
    
    //Action은 method로 연결
    @IBAction func showValue(_ sender: Any) {
        let name = inputField.text!
        valueLabel.text = "Hello \(name)"
    }
    
    
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let a = 10
        print(a)
        // Do any additional setup after loading the view.
    }


}

