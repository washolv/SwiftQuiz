//
//  QuizViewController.swift
//  SwiftQuiz
//
//  Created by Francisco Washington de Almeida Oliveira on 10/12/21.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet var btAnswers: [UIButton]!
    @IBOutlet weak var lbQuestion: UILabel!
    @IBOutlet weak var viTimer: UIView!
    let quizManager = QuizManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viTimer.frame.size.width = view.frame.size.width
        UIView.animate(withDuration: 60.0, delay: 0, options: .curveLinear) {
            self.viTimer.frame.size.width=0
        } completion: { success in
            self.showResults();
        }
        getNewQuiz()
    }
    func getNewQuiz(){
        quizManager.refreshQuiz()
        lbQuestion.text = quizManager.question
        for i in 0..<quizManager.options.count{
            let option = quizManager.options[i]
            let button = btAnswers[i]
            button.setTitle(option, for: .normal)
        }
    }
    func showResults(){
        performSegue(withIdentifier: "ResultSegue", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController = segue.destination as! ResultViewController
        resultViewController.totalAnwsers = quizManager.totalAnwsers
        resultViewController.totalCorrectAnwsers =  quizManager.totalCorrectAnwsers
    }

    @IBAction func selectAwnser(_ sender: UIButton) {
        let index = btAnswers.index(of: sender)!
        quizManager.validateAnwser(index: index)
        getNewQuiz()
        
    }
    
}
