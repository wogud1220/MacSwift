//
//  ViewController.swift
//  DatePicker_quizq_
//
//  Created by 윤재형 on 11/23/23.
//


import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var selectedImageLabel: UILabel!
    @IBOutlet var switchControl: UISwitch!
    
    var imgOn: UIImage?
    var imgOff: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchControl.isOn = false
        selectedImageLabel.text = "선택된 이미지: 없음"
        
        imgOn = UIImage(named: "20231101_010101.jpg")
        //imgOff = UIImage(named: "lamp_off.png")
        imageView.image = imgOn //이미지 뷰에 켜진 이미지 넣음
    }
    
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView: UIDatePicker = sender
        
        let formatter: DateFormatter = DateFormatter()
        formatter.dateFormat = "yyyyMMdd"
        selectedImageLabel.text = "선택된 이미지: "
    }
    
    



