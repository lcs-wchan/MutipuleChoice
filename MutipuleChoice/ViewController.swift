//
//  ViewController.swift
//  MutipuleChoice
//
//  Created by William Chan on 2019-12-03.
//  Copyright © 2019 WilliamChan. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    //CONNECT TEXT FIELD TO VIEWCONTROLLER
    @IBOutlet weak var numberOfQuestionInput: UITextField!
    @IBOutlet weak var studentAnswerInput: UITextField!
    @IBOutlet weak var correctAnswerInput: UITextField!
    @IBOutlet weak var resultOutput: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // reset text field
        numberOfQuestionInput.text = ""
        studentAnswerInput.text = ""
        correctAnswerInput.text = ""
    }
    
    @IBAction func check(_ sender: Any) {
        
        // GUARD STATEMENT
        
        //  the value entered is greater than 0
        guard let numberOfQuestionAsString = numberOfQuestionInput.text, numberOfQuestionAsString.count > 0, let numberOfQuestion = Int(numberOfQuestionAsString) else {
            resultOutput.text = "Please enter a integer value greater than zero"
            return
        }
        
        // make sure the number of question entered is equal to the number of student answer
        guard let studentAnswer = studentAnswerInput.text, studentAnswer.count == numberOfQuestion else {
            resultOutput.text = "Please be sure you input exectly \(numberOfQuestion) answers"
            return
        }
        
        // make sure the number of correct answer is equal to the number of student answer
        guard let correctAnswer = correctAnswerInput.text, correctAnswer.count == studentAnswer.count else {
            resultOutput.text = "Please be sure you input exectly \(numberOfQuestion) answers to the answer key"
            return
        }
        
        // PROCESS
        var numberOfRightAnswer = 0
        
    }
    
}
