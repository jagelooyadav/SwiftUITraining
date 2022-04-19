//
//  QuizPageViewModel.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 19/04/22.
//

import Foundation

class QuizPageViewModel {
    var questions: [QuestionViewModel] = []
    
    func observeQuestionSelection() {
        for question in currentQuestion.choices {
            question.action = { questionItemData in
                guard let questionItemData = questionItemData else { return }
                if questionItemData.isSelected {
                    // Nothing to do
                } else {
                    questionItemData.isSelected = true
                    let remainigns = self.currentQuestion.choices.filter { $0.index != questionItemData.index }
                    for item in remainigns {
                        item.isSelected = false
                    }
                }
            }
        }
    }
    
    var currentQuestion: QuestionViewModel = QuestionViewModel(question: "hey how are you?",
                                                               choices: [QuestionItemViewModel(title: "You am fine",
                                                                                               isSelected: true,
                                                                                               index: 0),
                                                                         QuestionItemViewModel(title: "You am tired",
                                                                                               isSelected: false,
                                                                                               index: 1),
                                                                         QuestionItemViewModel(title: "You am hungry",
                                                                                               isSelected: false,
                                                                                               index: 2),
                                                                         QuestionItemViewModel(title: "You are not fine",
                                                                                               isSelected: false,
                                                                                               index: 3)
                                                               ])
    
    var screenTitle: String {
        return "Qustions"
    }
}
