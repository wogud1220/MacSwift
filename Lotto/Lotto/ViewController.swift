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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    
    //view의 크기가 결정된 다음에 /2 하기.
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let labels = [number1Label!, number2Label!, number3Label!, number4Label!, number5Label!, number6Label!, number7Label!]
        
        var nums : [Int] = []
        
        //7보다 작을 때
        while nums.count < labels.count {
            let rnd = Int.random(in: 1...45)
            //랜덤 값이 없으면 append해라.
            if !nums.contains(rnd) {
                nums.append(rnd)
            }
        }
        let sortedNums = nums.sorted()
        
        
        //enumerate를 쓰면 2개의 인자 전달 가능
        for (index, label) in labels.enumerated() {
            //깎이긴 했어도 background가 색을 채워버림.
            label.layer.cornerRadius = label.bounds.width / 2
            //깎인 부분은 채우지 않겠다.
            label.clipsToBounds = true
            label.text = String(sortedNums[index])
            
            switch sortedNums[index]{
                case 1...10: label.backgroundColor = UIColor.yellow
                label.textColor = UIColor.black
                case 11...20: label.backgroundColor = UIColor.blue
                label.textColor = UIColor.white
                case 21...30: label.backgroundColor = UIColor.red
                label.textColor = UIColor.white
                case 31...40: label.backgroundColor = UIColor.gray
                label.textColor = UIColor.white
                case 41...45: label.backgroundColor = UIColor.green
                label.textColor = UIColor.black
                default:
                    break;
            }
        }
        
        number7Label.backgroundColor = UIColor.purple
        number7Label.textColor = UIColor.white
        
        
        
        
    }


}

