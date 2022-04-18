//
//  QuestionViewModel.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 18/04/22.
//

import Foundation

class QuestionViewModel: QuestionViewData {
    @Published var question: String
    @Published var choices: [QuestionItemViewData]
    
    init(question: String, choices: [QuestionItemViewData]) {
        self.question = question
        self.choices = choices
    }
}
