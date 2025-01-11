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
    
    func getWeatherImage(matching weather: String) -> UIImage? {
        if weather == "맑음" {
            return UIImage(named: "003_sunny")
        }
        else if weather == "흐림" {
            return UIImage(named: "001_cloud")
        }
        else if weather == "비"{
            return UIImage(named: "002_rainy")
        }
        else {
            return nil
        }
    }
    
    
    func getTemp(temperature: Int) -> String?{
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
        return nil
    }
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //nil coalescing operator
        let weather = ["맑음", "눈", "비"].randomElement() ?? "맑음"
        let temperature = Int.random(in: -20...30)
        
        
        weatherImageView.image = getWeatherImage(matching: weather)
        statusLabel.text = weather
        tempLabel.text = String(temperature);
        tempinfo.text = getTemp(temperature: temperature)
        
        
        
        
        
    }


}

