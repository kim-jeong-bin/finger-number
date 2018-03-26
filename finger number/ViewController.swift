//
//  ViewController.swift
//  finger number
//
//  Created by D7703_22 on 2018. 3. 26..
//  Copyright © 2018년 D7703_22. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func Guess(_ sender: Any) {
        //랜덤 숫자 생성
        let number = arc4random() % 6
        print (number)
        let numberString = String(number)
        
        if input.text == numberString {
            resultLabel.text = "정답 딩동댕"
        } else {
            resultLabel.text = "틀림 땡 정답은\(number)"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

