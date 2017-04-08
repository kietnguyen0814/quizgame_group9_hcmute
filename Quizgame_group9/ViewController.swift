//
//  ViewController.swift
//  Quizgame_group9
//
//  Created by Kiet Nguyen on 4/8/17.
//  Copyright © 2017 Group9_iOSUTE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!

    @IBOutlet weak var endLabel: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button4: UIButton!
    var correctAnswer = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        hideResult()
        randomQuestion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func hideResult(){
        endLabel.isHidden = true
    }
    
    func unhideResult(){
        endLabel.isHidden = false
    }
    
    func randomQuestion(){
        var randomNumber = arc4random() % 5
        randomNumber += 1
        questionLabel.textColor = UIColor.blue
        switch randomNumber {
        case 1:
            questionLabel.text = "Để setTitle 1 button trong Swift 3 thì"
            button1.setTitle("button.setTitle(\"iOS\", for: [.normal]", for: [.normal])
            button2.setTitle("button.setTitle(\"iOS\", for: [normal]", for: [.normal])
            button3.setTitle("button.setTitle(\"iOS\", for: normal.UIControlState", for: [.normal])
            button4.setTitle("button.setTitle(\"iOS\", for: UIControlState.Normal", for: [.normal])
            correctAnswer = "1"
        case 2:
            questionLabel.text="Ánh xạ 1 đối tượng thì phải làm như thế nào?"
            button1.setTitle("Xóa ánh xạ từ trong code.", for: [.normal])
            button2.setTitle("Xóa trực tiếp trong giao diện.", for: [.normal])
            button3.setTitle("Xóa liên kết trong phần show the connections inspector.", for: [.normal])
            button4.setTitle("Cả A và C đúng.", for: [.normal])
            correctAnswer = "4"
            break
        case 3:
            questionLabel.text="Ánh xạ 1 đối tượng vào code thì ta làm sao?"
            button1.setTitle("Ctrl + chuột trái kéo thả vào vùng code.", for: [.normal])
            button2.setTitle("Ctrl + chuột phải kéo thả vào vùng code.", for: [.normal])
            button3.setTitle("Command + chuột trái kéo thả vào vùng code.", for: [.normal])
            button4.setTitle("Kéo trực tiếp đối tượng thả vào code.", for: [.normal])
            correctAnswer = "1"
            break
        case 4:
            questionLabel.text="Để set màu cho 1 label thì đáp án nào là đúng?"
            button1.setTitle("labelname.textColor = red", for: [.normal])
            button2.setTitle("labelname.textColor = UIColor.red()", for: [.normal])
            button3.setTitle("labelname.textColor = UIColor.red", for: [.normal])
            button4.setTitle("labelname.textColor = UIColor.redColor()", for: [.normal])
            correctAnswer = "3"
            break
            
        case 5:
            questionLabel.text="Muốn ẩn 1 label trong Swift 3 phải làm sao?"
            button1.setTitle("labelname.isHidden = false", for: [.normal])
            button2.setTitle("labelname.isHidden = true", for: [.normal])
            button3.setTitle("labelname.hidden = true", for: [.normal])
            button4.setTitle("labelname.Hidden = true", for: [.normal])
            correctAnswer = "2"
            break

        default:
            break
        }
    }
    
    //Button Action
    @IBAction func button1Action(_ sender: Any) {
        unhideResult()
        if(correctAnswer=="1")
        {
            endLabel.text = "You are correct"
            endLabel.textColor = UIColor.green
        }
        else{
            endLabel.text = "You are wrong"
            endLabel.textColor = UIColor.red
        }
    }
    
    @IBAction func button2Action(_ sender: Any) {
        unhideResult()
        if(correctAnswer=="2")
        {
            endLabel.text = "You are correct"
            endLabel.textColor = UIColor.green
        }
        else{
            endLabel.text = "You are wrong"
            endLabel.textColor = UIColor.red
        }
    }
    
    @IBAction func button3Action(_ sender: Any) {
        unhideResult()
        if(correctAnswer=="3")
        {
            endLabel.text = "You are correct"
            endLabel.textColor = UIColor.green
        }
        else{
            endLabel.text = "You are wrong"
            endLabel.textColor = UIColor.red
        }
    }
    
    @IBAction func button4Action(_ sender: Any) {
        unhideResult()
        if(correctAnswer=="4")
        {
            endLabel.text = "You are correct"
            endLabel.textColor = UIColor.green
        }
        else{
            endLabel.text = "You are wrong"
            endLabel.textColor = UIColor.red
        }
    }
    @IBAction func buttonNextAction(_ sender: Any) {
        hideResult()
        randomQuestion()
    }
    
}

