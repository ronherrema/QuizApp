//
//  Quiz.swift
//  QuizApp
//
//  Created by R J Herrema on 22/10/2018.
//  Copyright © 2018 R J Herrema. All rights reserved.
//

import Foundation

class Quiz {
    
    var questions: [String] = []
    var answers: [Int: Bool] = [:]
    var currentAnswer: Bool = true
    var questionNumber: Int = 0
    
    
    init(questions: [String], answers: [Int: Bool]) {
        self.answers = answers
        self.questions = questions
    }
    
    func testCorrectness(answer: Bool) -> Bool {
        if answers[questionNumber] == currentAnswer {
            return true
        } else {
            return false
        }
    }
    
    
}
