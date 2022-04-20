//
//  QuestionViewModel.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 18/04/22.
//

import Foundation

class QuestionViewModel: QuestionViewData, ObservableObject {
    @Published var question: String
    @Published var choices: [QuestionItemViewModel]
    @Published var answer: String
    @Published var isAnsweredCorrectly = false
    
    init(question: String, choices: [QuestionItemViewModel], answer: String) {
        self.question = question
        self.choices = choices
        self.answer = answer
    }
}
