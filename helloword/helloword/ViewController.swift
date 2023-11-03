//
//  ViewController.swift
//  helloword
//
//  Created by 윤재형 on 2023/11/02.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lblHello: UILabel!
    @IBOutlet var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnsend(_ sender: UIButton) {
        lblHello.text = "Hello, " + txtName.text!
        
    }
    
}

