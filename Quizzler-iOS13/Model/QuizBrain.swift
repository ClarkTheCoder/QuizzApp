//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Carson Clark on 2023-11-20.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
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
    
    // _ means external param name omitted
    func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].answer {
            return true
        } else {
            return false
        }
    }
}
