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
        guard let numberOfQuestion = numberOfQuestionInput.text, numberOfQuestionInput.text!.count > 0 else {
            resultOutput.text = "Please enter the number of questions on the test"
            return
        }; guard let studentAnswer = studentAnswerInput.text, numberOfQuestionInput.text!.count > 0 else {
            resultOutput.text = "Please enter the student's answer"
            return
        }; guard let correctAnswer = correctAnswerInput.text, numberOfQuestionInput.text!.count > 0 else {
            resultOutput.text = "Please enter the correct answer"
            return
        }
        
}
}
