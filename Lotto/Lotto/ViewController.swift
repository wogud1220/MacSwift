//
//  ViewController.swift
//  Lotto
//
//  Created by 윤재형 on 8/28/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var number1Label: UILabel!
    @IBOutlet weak var number2Label: UILabel!
    @IBOutlet weak var number3Label: UILabel!
    @IBOutlet weak var number4Label: UILabel!
    @IBOutlet weak var number5Label: UILabel!
    @IBOutlet weak var number6Label: UILabel!
    @IBOutlet weak var number7Label: UILabel!
    
    @IBOutlet var labels: [UILabel]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // 1 ~ 10 노랑
        // 11 ~ 20 파랑
        // 21 ~ 30 빨간
        // 31 ~ 40 회색
        // 나머지 녹색
        // 보너스 번호 보라색
    }
    
    
    // 1~6 번은 숫자로 색깔 정하지만
    // 7번은 숫자에 관계 없음
    // 글자, 백그라운드 동시 리턴
    func getColors(number: Int?) -> (backgroundColor: UIColor, textColor: UIColor){
        
        guard let number else{
            return (UIColor.purple, UIColor.white)
        }
        
        switch number{
        case 1 ... 10:
            return (UIColor.yellow, UIColor.black)
        case 11 ... 20:
            return (UIColor.blue, UIColor.white)
        case 21 ... 30:
            return (UIColor.red, UIColor.white)
        case 31 ... 40:
            return (UIColor.gray, UIColor.white)
        case 41 ... 45:
            return (UIColor.green, UIColor.black)
        default:
            return (UIColor.purple, UIColor.white)
        }
        
    }
    
    
    
    
    
//화면 회전시 자동으로 호출 메소드
    override func viewWillTransition(to size: CGSize, with coordinator: any UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        coordinator.animate { _ in
            
            for label in self.labels {
                // view의 background는 깎인 부분도 채움
                label.layer.cornerRadius = label.bounds.width / 2
                //해줘야함
                label.clipsToBounds = true
                
            }
        }
    }
    
    
    
    // 화면이 표시된 직후에 자동으로 호출 메소드, 콜백
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //let labels =  [number1Label!, number2Label!, number3Label!, number4Label!, number5Label!, number6Label!, number7Label!]
        
        var nums = [Int]()
        
        while nums.count < labels.count{ //7개 0~6
            let rnd = Int.random(in: 1...45)
            if !nums.contains(rnd){
                nums.append(rnd)
            }
        }
        
        nums.sort()
        
        for (index, label) in labels.enumerated() {
            // view의 background는 깎인 부분도 채움
            label.layer.cornerRadius = label.bounds.width / 2
            //해줘야함
            label.clipsToBounds = true
            
            label.text = String(nums[index])
            label.backgroundColor = getColors(number: nums[index]).backgroundColor
            label.textColor = getColors(number: nums[index]).textColor
            
            
            
        }
        
//        let rnd7 = Int.random(in: 1...45)
//        number7Label.text = String(rnd7)
        let colors = getColors(number: nil)
        number7Label.backgroundColor = colors.backgroundColor
        number7Label.textColor = colors.textColor
        
        
        
        
    }
    
}
