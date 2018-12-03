//
//  MultiplicationViewController.swift
//  FlashCards
//
//  Created by cis290 on 11/27/18.
//  Copyright © 2018 Rock Valley College. All rights reserved.
//

import UIKit

class MultiplicationViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var firstMultiplicationLabel: UILabel!
    @IBOutlet weak var secondMultiplicationLabel: UILabel!
    @IBOutlet weak var answerTextBox: UITextField!
    @IBOutlet weak var correctAnswersLabel: UILabel!
    @IBOutlet weak var attemptsLabel: UILabel!
    @IBOutlet weak var checkButton: UIButton!
    
    //Variable Declarataion
    var correctAnswers = 0
    var attempts = 0
    var firstNumber = Int.random(in: 0 ... 12)
    var secondNumber = Int.random(in: 0 ... 12)
    
    //Actions
    @IBAction func checkButton(_ sender: Any) {
        let multiplicationAnswer: Int? = Int(answerTextBox.text!)
        if (firstNumber * secondNumber) == multiplicationAnswer
        {
            let firstNumber = Int.random(in: 0 ... 12)
            let secondNumber = Int.random(in: 0 ... 12)
            firstMultiplicationLabel.text = "\(firstNumber)"
            secondMultiplicationLabel.text = "\(secondNumber)"
            correctAnswers = correctAnswers + 1
            attempts = attempts + 1
            correctAnswersLabel.text = "\(correctAnswers)"
            attemptsLabel.text = "\(attempts)"
            answerTextBox.text = ""
        }
        else
        {
            answerTextBox.text = "Incorrect"
            attempts = attempts + 1
            attemptsLabel.text = "\(attempts)"
            answerTextBox.selectAll(nil)
            answerTextBox.becomeFirstResponder()
        }
    }
    override func viewDidLoad() {
        firstMultiplicationLabel.text = "\(firstNumber)"
        secondMultiplicationLabel.text = "\(secondNumber)"
        correctAnswersLabel.text = "\(correctAnswers)"
        attemptsLabel.text = "\(attempts)"
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
