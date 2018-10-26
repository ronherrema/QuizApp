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


    var myQuestions = ["The capital of Michigan is Lansing",
                       "Dolphins are fish",
                       "Grass is purple"]
    var myAnswers = [0: true, 1: false, 2: false]
    
    lazy var myQuiz = Quiz(questions: myQuestions, answers: myAnswers)
    
    
    @IBOutlet weak var questionField: UITextView!
    
    @IBOutlet weak var feedback: UILabel!
    
    @IBAction func testAnswer(_ sender: UIButton) {
        if sender.tag == 1 {
            myQuiz.currentAnswer = true
        } else {
            myQuiz.currentAnswer = false
        }
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
    
    
    
    func nextQuestion() {
        questionField.text = myQuestions[myQuiz.questionNumber]
        myQuiz.currentAnswer = myAnswers[myQuiz.questionNumber]!
        
    }
    
}

