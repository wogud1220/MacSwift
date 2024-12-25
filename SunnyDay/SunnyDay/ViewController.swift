//
//  ViewController.swift
//  SunnyDay
//
//  Created by 윤재형 on 12/24/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    
    @IBOutlet weak var tempinfo: UILabel!
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let weather = "비"
        let temperature = 17
        
        
        if weather == "맑음" {
            weatherImageView.image = UIImage(named: "003_sunny")
        }
        else if weather == "흐림" {
            weatherImageView.image = UIImage(named: "001_cloud")
        }
        else if weather == "비"{
            weatherImageView.image = UIImage(named: "002_rainy")
        }
        statusLabel.text = weather
        tempLabel.text = String(temperature);
        
        switch temperature {
        case -100 ..< -10:
            tempinfo.text = "이불 밖은 위험해요"
        case -10...10:
            tempinfo.text = "두툼한 패딩을 챙기세요"
        case 11...20:
            tempinfo.text = "일교차 조심하세요"
        case 21...30:
            tempinfo.text = "여름이 다가오고 있어요"
        default:
            break ;
        }
        
        
        
        
        
        
        
    }


}

