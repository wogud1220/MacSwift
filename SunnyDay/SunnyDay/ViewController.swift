//
//  ViewController.swift
//  SunnyDay
//
//  Created by 윤재형 on 8/28/24.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var weatherImageView: UIImageView!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    //이미지가 없을 수도 있으니 옵셔널
    func getWeatherImage(weather: String?) -> UIImage?
    {
        switch weather {
        case "맑음":
            return UIImage(named: "sun")
        case "눈":
            return UIImage(named: "snow")
        case "비":
            return UIImage(named: "rain")
        case "구름":
            return UIImage(named: "cloud")
        default:
            break
        }
        return nil
    }
    
    func getDescription(temp: Int) -> String?{
        switch temp{
        case -20 ... -10:
            return "이불 밖은 위험해요"
        case -9...10:
            return "두툼한 패딩을 챙기세요"
        case 11...20:
            return "일교차 조심하세요"
        case 21...30:
            return "여름이 다가오고 있어요"
        case 30...:
            return "XX 여름"
        default:
            return nil
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let weather = ["맑음", "흐림", "눈", "비"].randomElement() ?? "맑음"
        let temperature: Int = Int.random(in: -20 ... 38)
        weatherImageView.image = getWeatherImage(weather: weather)
        temperatureLabel.text = String(temperature)
        descriptionLabel.text = getDescription(temp: temperature)
        
    }


}

