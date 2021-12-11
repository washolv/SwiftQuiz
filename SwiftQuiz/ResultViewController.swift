//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Francisco Washington de Almeida Oliveira on 10/12/21.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var lbScore: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbAnswered: UILabel!
    @IBOutlet weak var lbAwnsers: UILabel!
    var totalCorrectAnwsers = 0
    var totalAnwsers = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        lbAwnsers.text = "Perguntas respondidas: \(totalAnwsers)"
        lbCorrect.text = "Perguntas corretas: \(totalCorrectAnwsers)"
        lbWrong.text = "Perguntas erradas: \(totalAnwsers - totalCorrectAnwsers)"
        let score = totalCorrectAnwsers*100/totalAnwsers
        lbScore.text = "\(score)%"
    }
    

    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
