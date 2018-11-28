//
//  AdditionViewController.swift
//  FlashCards
//
//  Created by cis290 on 11/27/18.
//  Copyright © 2018 Rock Valley College. All rights reserved.
//

import UIKit

class AdditionViewController: UIViewController {
    
    //Outlets
    @IBOutlet weak var firstAdditionLabel: UILabel!
    @IBOutlet weak var secondAdditionLabel: UILabel!
    @IBOutlet weak var additionAnswerTextBox: UITextField!
    @IBOutlet weak var additionCheckButton: UIButton!
    @IBOutlet weak var corectAnswersAmountLabel: UILabel!
    @IBOutlet weak var attemptsAmountLabel: UILabel!
    
    //Variable declaration
    var correctAnswers = 0
    var attempts = 0
    var firstNumber = Int.random(in: 0 ... 12)
    var secondNumber = Int.random(in: 0 ... 12)
    
    //Actions
    @IBAction func additionCheckButton(_ sender: Any) {
        let additionAnswer: Int? = Int(additionAnswerTextBox.text!)
        if (firstNumber + secondNumber) == additionAnswer
        {
            let firstNumber = Int.random(in: 0 ... 12)
            let secondNumber = Int.random(in: 0 ... 12)
            firstAdditionLabel.text = "\(firstNumber)"
            secondAdditionLabel.text = "\(secondNumber)"
            correctAnswers = correctAnswers + 1
            attempts = attempts + 1
            corectAnswersAmountLabel.text = "\(correctAnswers)"
            attemptsAmountLabel.text = "\(attempts)"
            additionAnswerTextBox.text = ""
        }
        else
        {
            additionAnswerTextBox.text = "Incorrect"
            attempts = attempts + 1
            attemptsAmountLabel.text = "\(attempts)"
        }
    }
    override func viewDidLoad() {
        firstAdditionLabel.text = "\(firstNumber)"
        secondAdditionLabel.text = "\(secondNumber)"
        corectAnswersAmountLabel.text = "\(correctAnswers)"
        attemptsAmountLabel.text = "\(attempts)"
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
