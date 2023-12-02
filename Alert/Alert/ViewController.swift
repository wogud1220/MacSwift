//
//  ViewController.swift
//  Alert
//
//  Created by 윤재형 on 11/23/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    let imgOn = UIImage(named: "lamp_on.png")
    let imgOff = UIImage(named: "lamp_off.png")
    let imgRemove = UIImage(named: "lamp_remove.png")
    var isLampOn = true
    @IBOutlet var lampImg: UIImageView!
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            self.lampImg.image = imgOn
    }
   

    @IBAction func btnLampOn(_ sender: UIButton) {
        if(isLampOn == true){
            let lampOnAlert = UIAlertController(title: "경고", message: "현재 On 상태입니다.", preferredStyle: UIAlertController.Style.alert)
            let onAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            lampOnAlert.addAction(onAction)
            present(lampOnAlert, animated: true, completion: nil)
        }
        else {
            self.lampImg.image = imgOn
            self.isLampOn = true
        }
    }
    @IBAction func btnLampOff(_ sender: UIButton) {
        if(isLampOn == true) {
            let lampOffAlert = UIAlertController(title: "램프 끄기", message: "램프를 끄시겠습니까?", preferredStyle: UIAlertController.Style.alert)
            let offAction = UIAlertAction(title: "네", style: UIAlertAction.Style.default,
                                         handler: {(action: UIAlertAction) -> Void in
                self.lampImg.image = self.imgOff
                self.isLampOn = false})
            let cancelAction = UIAlertAction(title: "아니오", style: UIAlertAction.Style.default,handler:  nil)
            
            lampOffAlert.addAction(offAction)
            lampOffAlert.addAction(cancelAction)
            
            present(lampOffAlert, animated: true, completion: nil)
            
        }
    }
    @IBAction func btnLampRemove(_ sender: UIButton) {
    }
    
}

