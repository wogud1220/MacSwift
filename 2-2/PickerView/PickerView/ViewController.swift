//
//  ViewController.swift
//  PickerView
//
//  Created by 윤재형 on 11/23/23.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let MAX_ARRAY_NUM = 10
    let PICKER_VIEW_COLUMN = 1
    var imageFileNmae = ["1.jpg", "2.jpg","3.jpg", "4.jpg","5.jpg", "6.jpg","7.jpg", "8.jpg","9.jpg", "10.jpg"]
    
    @IBOutlet var pickerImage: UIPickerView!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var lblImageFileName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerImage.delegate = self
    }


}

