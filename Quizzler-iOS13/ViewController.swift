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
    ["1+1=2", "True"],
    ["2+2=4", "True"],
    ["3+3=8", "False"],
    ]
    
    var questionNumber = 0
    let questionAnswer = 1
  
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]
        
//        if userAnswer == actualAnswer {
//
//        }
        
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            print("Out of range")
        }
        updateUI()
    }


}

