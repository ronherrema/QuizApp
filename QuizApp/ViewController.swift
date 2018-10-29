//
//  ViewController.swift 
//  QuizApp
//
//  Created by R J Herrema on 21/10/2018.
//  Copyright © 2018 R J Herrema. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

        override func viewDidLoad() {
            super.viewDidLoad()
            
            // pre-load the first question
            nextQuestion()
        }

    // note that the members of the array can be put on different lines
    var myQuestions = ["The capital of Michigan is Lansing.",
                       "Dolphins are fish",
                       "Grass is purple"]
    var myAnswers = [0: true, 1: false, 2: false]
    
    // lazy instantiation solves the problem of 'self' not yet existing
    lazy var myQuiz = Quiz(questions: myQuestions, answers: myAnswers)
    
    
    @IBOutlet weak var questionField: UILabel!
    
    @IBOutlet weak var feedback: UILabel!
    
    // one function for multiple buttons - True has the tag '1'
    @IBAction func testAnswer(_ sender: UIButton) {
        if sender.tag == 1 {
            myQuiz.currentAnswer = true
        } else {
            myQuiz.currentAnswer = false
        }
        
        // accessing a value in the dictionary gives back an optional - hence the forced unwrapping
        if myQuiz.testCorrectness(answer: myQuiz.currentAnswer!) {
            feedback.text = "correct, it's \(myQuiz.currentAnswer!)"
        } else {
            feedback.text = "incorrect"
        }
        
        myQuiz.questionNumber += 1
        
        // prevent going out of bounds in the questions array
        if myQuiz.questionNumber == myQuestions.count {
            myQuiz.questionNumber = 0
        }
        
        nextQuestion()
    }
    
    // load the next question and answer
    func nextQuestion() {
        questionField.text = myQuestions[myQuiz.questionNumber]
        myQuiz.currentAnswer = myAnswers[myQuiz.questionNumber]!
        
    }
    
}

