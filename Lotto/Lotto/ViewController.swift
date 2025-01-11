//
//  ViewController.swift
//  Lotto
//
//  Created by 윤재형 on 12/25/24.
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
        
    }
    func getColors (from number: Int?) -> (backgroundColor: UIColor, textColor: UIColor){
        
        //넘버가 닐이라면 else 실행
        guard let number else{
            return (UIColor.purple, UIColor.white)
        }
        switch number{
        case 1...10:
            return (UIColor.yellow, UIColor.black)
        case 11...20:
            return(UIColor.blue, UIColor.white)
        case 21...30:
            return(UIColor.red, UIColor.white)
        case 31...40:
            return(UIColor.gray, UIColor.white)
        case 41...45:
            return(UIColor.green, UIColor.black)
        default:
            return(UIColor.purple, UIColor.white)
        }
        
        
    }
    
    
    //화면을 회전 시킬 때 마다 크기 재조정
    //labels란 outletcolletions을 만들어서 한번에 처리함
    override func viewWillTransition(to size: CGSize, with coordinator: any UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        coordinator.animate { _ in
            //enumerate를 쓰면 2개의 인자 전달 가능
            //closure안에라서 self사용해야됨
            for label in self.labels {
                //깎이긴 했어도 background가 색을 채워버림.
                label.layer.cornerRadius = label.bounds.width / 2
                //깎인 부분은 채우지 않겠다.
                label.clipsToBounds = true

               
            }
        }
    }
    
    
    
    //view의 크기가 결정된 다음에 /2 하기.
    //화면이 표시된 직후 자동으로 호출되는 메소드 (콜백 메소드)
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let labels = [number1Label!, number2Label!, number3Label!, number4Label!, number5Label!, number6Label!, number7Label!]
        
        var nums : [Int] = []
        
        //7보다 작을 때
        //method안에 있어서 self안써도 됨
        while nums.count < self.labels.count {
            let rnd = Int.random(in: 1...45)
            //랜덤 값이 없으면 append해라.
            if !nums.contains(rnd) {
                nums.append(rnd)
            }
        }
        
        
        
        
        nums.sort()
        
        //enumerate를 쓰면 2개의 인자 전달 가능
        for (index, label) in labels.enumerated() {
            //깎이긴 했어도 background가 색을 채워버림.
            label.layer.cornerRadius = label.bounds.width / 2
            //깎인 부분은 채우지 않겠다.
            label.clipsToBounds = true
            label.text = String(nums[index])
            label.backgroundColor = getColors(from: nums[index]).backgroundColor
            label.textColor = getColors(from: nums[index]).textColor
           
        }
        let colors = getColors(from: nil)
        number7Label.backgroundColor = colors.backgroundColor
        number7Label.textColor = colors.textColor
        
        
        
        
    }


}

