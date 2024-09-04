//
//  ViewController.swift
//  MobileProgrammig_Final_Project
//
//  Created by 윤재형 on 11/30/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var sickLabel: UILabel!
    var humanImg: UIImage?
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        humanImg = UIImage(named: "sumnail_250.png")
        imgView.image = humanImg //이미지 뷰에 켜진 이미지 넣음
    }


}



