//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        Question(q: "1+1=2", a: "True"),
        Question(q: "2+2=4", a: "True"),
        Question(q: "9+6=9", a: "False"),
        Question(q: "1+4=5", a: "True"),
        Question(q: "9+2=11", a: "True"),
        Question(q: "12+45=9", a: "False"),
        Question(q: "2+7=9", a: "True"),
        Question(q: "1+6=7", a: "True")
    ]
    
    var questionNumber = 0
  
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @objc func updateUI() {
        questionLabel.text = quiz[questionNumber].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        print("ui updated")
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber].answer
        
        if userAnswer == actualAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        Timer.scheduledTimer(timeInterval: 2, target:self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }


}

