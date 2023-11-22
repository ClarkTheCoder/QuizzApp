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
    var score = 0
    
    // _ means external param name omitted
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        let question = quiz[questionNumber].text
        return question
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber + 1) / Float(quiz.count)
        return progress
    }
    
    // self refers to instance of structure itself (from within structures decleration)
    // use immutable because when structs are created, they're done so with the let keywrod (invisible)
    mutating func nextQuestion() {
        if questionNumber < quiz.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
    
}
