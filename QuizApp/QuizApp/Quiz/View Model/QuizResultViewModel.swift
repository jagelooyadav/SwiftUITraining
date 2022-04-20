//
//  QuizResultViewModel.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 20/04/22.
//

import Foundation

class QuizResultViewModel: ObservableObject {
    @Published var questions: [QuestionViewModel]
    
    init(questions: [QuestionViewModel]) {
        self.questions = questions
    }
}
