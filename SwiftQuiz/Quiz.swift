//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by Francisco Washington de Almeida Oliveira on 10/12/21.
//

import Foundation

class Quiz{
    let question: String
    let options: [String]
    private let correctedAnwser: String
    
    init(question: String, options: [String], correctedAnwser: String){
        self.question=question
        self.options=options
        self.correctedAnwser=correctedAnwser
    }
    func validateOption(_ index: Int) -> Bool{
        let anwser = options[index]
        return anwser == correctedAnwser
    }
    deinit{
        print("Liberou um Quiz da memória")
    }
    
}
