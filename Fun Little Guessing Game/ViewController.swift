//
//  ViewController.swift
//  Fun Little Guessing Game
//
//  Created by SkyeGamesYT
// MIT License

import UIKit

class ViewController: UIViewController {
 //Variables
    //Text Field
    @IBOutlet weak var guessTextField: UITextField!
    //Label
    @IBOutlet weak var answerLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerLabel.text = "Random Number Guessing Game"
        print("Made by SkyeGamesYT")
    }

//Button
    @IBAction func guessButton(_ sender: UIButton) {
        let number = Int.random(in: 1...10)
        var guessed = Int(guessTextField.text!)!
       
        if guessed == number {
            answerLabel.text = "Correct! The number was \(number)"
        } else {
            answerLabel.text = "Wrong! The number was \(number)"
        }
        

    }
}

