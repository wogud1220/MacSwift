//
//  ViewController.swift
//  HelloSwiftProject
//
//  Created by 윤재형 on 8/27/24.
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valueLabel: UILabel!
    
    
    @IBOutlet weak var inputField: UITextField!
    
    
    @IBAction func showValue(_ sender: Any) {
        
        let name = inputField.text!
        valueLabel.text = "Hello, \(name)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let a :Int = 10
        print(a)
    }


}

