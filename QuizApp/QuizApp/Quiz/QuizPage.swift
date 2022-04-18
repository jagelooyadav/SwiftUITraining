//
//  QuizPage.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 18/04/22.
//

import SwiftUI

struct QuizPage: View, AppBackground {
    @Environment(\.dismiss) private var dismiss
    private enum Images {
        static let wordQuiz = "word_big"
        static let definitionQuiz = "definition-bttn-5"
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            background.ignoresSafeArea()
            createContent()
        }.customNavigationTitle("Qustions", backAction: { dismiss() })
    }
    
    private func createContent() -> some View {
        VStack(alignment: .leading) {
            QuestionView(data: QuestionViewModel(question: "hey how are you?", choices: [QuestionItemViewModel(title: "You am fine", isSelected: true, index: 0),
                                                                                         QuestionItemViewModel(title: "You am tired", isSelected: false, index: 1),
                                                                                         QuestionItemViewModel(title: "You am hungry", isSelected: false, index: 2),
                                                                                         QuestionItemViewModel(title: "You are not fine", isSelected: false, index: 3)
                                                                                        ]))
        }
    }
}

struct QuizPage_Previews: PreviewProvider {
    static var previews: some View {
        QuizPage()
    }
}
