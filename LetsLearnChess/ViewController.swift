//
//  ViewController.swift
//  LetsLearnChess
//
//  Created by Troy Cavanagh on 31/5/19.
//  Copyright © 2019 Troy Cavanagh. All rights reserved.
//

import UIKit

struct ChessQuestion {
    let question: String
    let correctAnswer: String
    
}

class ViewController: UIViewController {

    @IBOutlet private var questionLabel: UILabel!
    @IBOutlet private var answerBishopButton: UIButton!
    @IBOutlet private var answerRookButton: UIButton!
    @IBOutlet private var answerKnightButton: UIButton!
    @IBOutlet private var answerQueenButton: UIButton!
    @IBOutlet private var answerKingButton: UIButton!
    @IBOutlet private var answerPawnButton: UIButton!
    @IBOutlet private var gameOverButton: UIButton!
    
    var questions = [ChessQuestion]()
    
    var currentQuestionCount: Int = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questions = generateQuestions()
        showNextQuestion()
}
    
   @IBAction func checkAnswerBishop(_ sender: Any) {
       checkUserAnswer(buttonPressed: 0)
    }
    @IBAction func checkAnswerRook(_ sender: Any){
        checkUserAnswer(buttonPressed: 1)
    }
   @IBAction func checkAnswerQueen(_ sender: Any) {
       checkUserAnswer(buttonPressed: 2)
   }
    @IBAction func checkAnswerKnight(_ sender: Any) {
        checkUserAnswer(buttonPressed: 3)
    }
    @IBAction func checkAnswerPawn(_ sender: Any) {
        checkUserAnswer(buttonPressed: 4)
    }
   @IBAction func checkAnswerKing(_ sender: Any) {
      checkUserAnswer(buttonPressed: 5)
    }
    
    
  
 
  func showNextQuestion(){
    let currentQuestion = questions[currentQuestionCount]

       questionLabel.text = currentQuestion.question;
       answerBishopButton.setTitle(currentQuestion.correctAnswer, for: .normal)
       answerRookButton.setTitle(currentQuestion.correctAnswer, for: .normal)
       answerQueenButton.setTitle(currentQuestion.correctAnswer, for: .normal)
       answerKnightButton.setTitle(currentQuestion.correctAnswer, for: .normal)
       answerPawnButton.setTitle(currentQuestion.correctAnswer, for: .normal)
       answerKingButton.setTitle(currentQuestion.correctAnswer, for: .normal)
    }
 // continuation of questions
   
    func checkUserAnswer(buttonPressed: Int){
        let currentQuestion = questions[currentQuestionCount]
        switch buttonPressed {
        case 0:
            if currentQuestion.correctAnswer == "bishop" {
            // increase score
                currentQuestionCount += 1
                gameOverButton.setTitle("correct answer score:1", for: .normal)
                showNextQuestion() // repeat
            }
            else {currentQuestionCount += 0
                gameOverButton.setTitle("incorrect answer", for: .normal)
                //showNextQuestion()
            }
            
        case 1:
            if currentQuestion.correctAnswer == "rook" {
                // increase score
                currentQuestionCount += 1
                gameOverButton.setTitle("correct answer score:2", for: .normal)
                showNextQuestion() // repeat
            }
            else {currentQuestionCount += 0
                gameOverButton.setTitle("incorrect answer", for: .normal)
                //showNextQuestion()
            }
            
        case 2:
            if currentQuestion.correctAnswer == "queen" {
                // increase score
                currentQuestionCount += 1
                gameOverButton.setTitle("correct answer score:3", for: .normal)
                showNextQuestion() // repeat
            }
            else {currentQuestionCount += 0
                gameOverButton.setTitle("incorrect answer", for: .normal)
                showNextQuestion()
            }
        case 3:
            if currentQuestion.correctAnswer == "knight" {
                // increase score
                currentQuestionCount += 1
                gameOverButton.setTitle("correct answer score:4", for: .normal)
                showNextQuestion() // repeat
            }
            else {currentQuestionCount += 0
                gameOverButton.setTitle("incorrect answer", for: .normal)
                showNextQuestion()
            }
        case 4:
            if currentQuestion.correctAnswer == "pawn" {
                // increase score
                currentQuestionCount += 1
                gameOverButton.setTitle("correct answer score:5", for: .normal)
                showNextQuestion() // repeat
                
            }
            else {currentQuestionCount += 0
                gameOverButton.setTitle("incorrect answer", for: .normal)
                showNextQuestion()
            }
        case 5:
            if currentQuestion.correctAnswer == "king" {
                // increase score
                currentQuestionCount += 1
                
                gameOverButton.setTitle("Final Score of 6 : Game Over - Play Again !", for: .normal)
            }
            else {currentQuestionCount += 0
                  gameOverButton.setTitle("incorrect answer", for: .normal)
            }
            
        default:
                gameOverButton.setTitle("2Thats Game Over - Play Again ! ", for: .normal)
                break
            }
        }
        }

    func generateQuestions() -> [ChessQuestion] {
        return[ChessQuestion(question: "Which is the Bishop Piece ?",correctAnswer: "bishop"),
        ChessQuestion(question: "Which is the Rook Piece ?",correctAnswer: "rook"),
        ChessQuestion(question: "Which is the Queen Piece ?",correctAnswer: "queen"),
        ChessQuestion(question: "Which is the Knight Piece ?",correctAnswer: "knight"),
        ChessQuestion(question: "Which is the Pawn Piece ?",correctAnswer: "pawn"),
        ChessQuestion(question: "Which is the King Piece ?",correctAnswer: "king")]
        
       
        
    }

      //func shuffle(generateQuestions:[ChessQuestion]) -> [ChessQuestion] {
    //var items = stringArray
     // var shuffled = [String]();
    
     // for _ in items.enumerated()
   // {
//let rand = Int(arc4random_uniform(UInt32(items.count)))
    //    let randomItem = items[rand]
    //    shuffled.append(randomItem)
    //    items.remove(at: rand)
  //  }
  //  return shuffled



 // func endgame () {
 //   if currentQuestionCount == 5 {
 //         gameOverButton.setTitle("Game Over !", for: .normal)
 //   }







