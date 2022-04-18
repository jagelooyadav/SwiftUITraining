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
        ZStack(alignment: .top) {
            background.ignoresSafeArea()
            createContent()
            Spacer()
        }.customNavigationTitle("Qustions", backAction: { dismiss() })
    }
    
    private func createContent() -> some View {
        VStack(alignment: .center) {
            VStack(alignment: .center, spacing: 30) {
                QuestionView(data: QuestionViewModel(question: "hey how are you?", choices: [QuestionItemViewModel(title: "You am fine", isSelected: true, index: 0),
                                                                                             QuestionItemViewModel(title: "You am tired", isSelected: false, index: 1),
                                                                                             QuestionItemViewModel(title: "You am hungry", isSelected: false, index: 2),
                                                                                             QuestionItemViewModel(title: "You are not fine", isSelected: false, index: 3)
                                                                                            ]))
                HStack(spacing: 30.0) {
                    RoundedButton(title: "Next") {
                        print("Click")
                    }
                    Text("1 of 10").foregroundColor(AppTheme.orange)
                }
            }
        
        }
    }
}

struct QuizPage_Previews: PreviewProvider {
    static var previews: some View {
        QuizPage()
    }
}
