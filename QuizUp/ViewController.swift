//
//  ViewController.swift
//  QuizUp
//
//  Created by Sai Reddy on 30/07/21.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    let questions = [Question(q: "A slug's blood is green.", a: "True"),
                     Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
                     Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
                     Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
                     Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
                     Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
                     Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
                     Question(q: "Google was originally called 'Backrub'.", a: "True"),
                     Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
                     Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
                     Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
                     Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")]
    var questionNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        updateUI()
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        
        let user_answer = sender.currentTitle
        let correct_answer = questions[questionNumber].answer
        
        if(user_answer == correct_answer){
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        
        
        if(questionNumber+1<questions.count){
            questionNumber += 1
        }
        else{
            questionNumber = 0
        }
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI(){
        QuestionLabel.text = questions[questionNumber].Label
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = Float(questionNumber+1)/Float(questions.count)
        
    }
    
}

