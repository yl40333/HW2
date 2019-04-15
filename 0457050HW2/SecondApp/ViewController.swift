//
//  ViewController.swift
//  SecondApp
//
//  Created by User07 on 2019/4/14.
//  Copyright © 2019 User07. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var mlbALpha: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return  true
    }
    @IBOutlet weak var numberLabel: UILabel!
    @IBAction func sliderChange(_ sender: UISlider) {
        sender.value.round()
        numberLabel.text = Int(sender.value).description
        mlbALpha.alpha=CGFloat(sender.value)
    }
    @IBOutlet weak var nameChange: UITextField!
    @IBOutlet weak var proChange: UISegmentedControl!
    @IBOutlet weak var dateChange: UIDatePicker!
    
    @IBOutlet weak var switchOF: UISwitch!
    @IBOutlet weak var answerChange: UILabel!
    
    @IBOutlet weak var pthtResult: UIImageView!
    @IBOutlet weak var proPTorHT: UIImageView!
    @IBOutlet weak var activeChange: UILabel!
    @IBOutlet weak var dateResult: UILabel!
    @IBAction func btnResult(_ sender: Any) {
        if switchOF.isOn == true{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        let dateString = dateFormatter.string(from: dateChange.date)
        answerChange.text = nameChange.text
        dateResult.text = ("在"+dateString)
        }
        else{
            dateResult.text=""
            answerChange.text=""
        }
        let numberPT = Int.random(in: 0...2)
        let numberHT = Int.random(in: 0...4)
        if proChange.selectedSegmentIndex == 0{
            activeChange.text = "投出了"
            proPTorHT.image=UIImage(named: "投手")
            if numberPT==0{
                pthtResult.image=UIImage(named: "保送")
            }
            if numberPT==1{
                pthtResult.image=UIImage(named: "3振")
            }
            if numberPT==2{
                pthtResult.image=UIImage(named: "OUT")
            }
        }
        else{
            activeChange.text = "打出了"
            proPTorHT.image=UIImage(named: "打者")
            if numberHT==0{
                pthtResult.image=UIImage(named: "1壘打")
            }
            if numberHT==1{
                pthtResult.image=UIImage(named: "2壘打")
            }
            if numberHT==2{
                pthtResult.image=UIImage(named: "3壘打")
            }
            if numberHT==3{
                pthtResult.image=UIImage(named: "全壘打")
            }
            if numberHT==4{
                pthtResult.image=UIImage(named: "OUT")
            }
        }
    }
    
    
    
    
    
    
    
    
}

