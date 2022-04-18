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
    
    init(question: String, choices: [QuestionItemViewModel]) {
        self.question = question
        self.choices = choices
    }
}
