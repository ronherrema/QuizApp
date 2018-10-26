//
//  ViewController.swift
//  QuizApp
//
//  Created by R J Herrema on 21/10/2018.
//  Copyright © 2018 R J Herrema. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    var myQuestions = ["The capital of Michigan is Detroit", "Dolphins are fish"]
    var myAnswers = [0: false, 1: false]
    
    lazy var myQuiz = Quiz(questions: myQuestions, answers: myAnswers)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBOutlet weak var questionField: UITextView!
    
    @IBAction func sayTrue(_ sender: UIButton) {
        if myQuiz.testCorrectness(answer: myQuiz.currentAnswer) {
            print("correct, it's true")
        }
    }
    
    @IBAction func sayFalse(_ sender: UIButton) {
        if myQuiz.testCorrectness(answer: myQuiz.currentAnswer) {
            print("correct, it's false")
        }
    }
    
}

