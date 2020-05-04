//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by Brenner on 20/02/20.
//  Copyright © 2020 Brenner. All rights reserved.
//

import Foundation


class Quiz {
    
    let question: String
    let options: [String]
    private let correctedAnswer: String
    
    init(question: String, options: [String], correectedAnswer: String) {
        
        self.question = question
        self.options = options
        self.correctedAnswer = correectedAnswer
    }
    func validateOption(_ index: Int) -> Bool{
        let answer = options[index]
        return answer == correctedAnswer
        
    }
    deinit {
        print("Liberou Quiz da memoria")
    }
    
    
}
