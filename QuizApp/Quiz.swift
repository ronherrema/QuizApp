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
    
    // the initial current answer might possibly be unknown and is thus an optional
    var currentAnswer: Bool?
    var questionNumber: Int = 0
    
    // instantiate the object using two parameters
    init(questions: [String], answers: [Int: Bool]) {
        self.answers = answers
        self.questions = questions
    }
    
    // the function tells us whether the answers match
    func testCorrectness(answer: Bool) -> Bool {
        if answers[questionNumber] == answer {
            return true
        } else {
            return false
        }
    }
    
    
}
