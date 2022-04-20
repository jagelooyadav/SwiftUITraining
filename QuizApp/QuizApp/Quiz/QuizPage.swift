//
//  QuizPage.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 18/04/22.
//

import SwiftUI

struct QuizPage: View, AppBackground {
    @Environment(\.dismiss) private var dismiss
    @ObservedObject private var viewModel = QuizPageViewModel()
    
    var body: some View {
        ZStack(alignment: .top) {
            background.ignoresSafeArea()
            createContent()
            Spacer()
        }.customNavigationTitle(viewModel.screenTitle, backAction: { dismiss() })
    }
    
    @ViewBuilder
    private func createContent() -> some View {
        VStack(alignment: .center) {
            VStack(alignment: .center, spacing: 30) {
                if let currentQuestion = viewModel.currentQuestion {
                    QuestionView(data: currentQuestion)
                }
                HStack(spacing: 20.0) {
                    RoundedButton(title: "Prev") {
                        print("Click")
                    }
                    RoundedButton(title: "Next") {
                        print("Click")
                    }.hide(falg: false)
                    Text("1 of 10").foregroundColor(AppTheme.orange)
                }
            }.onAppear() {
                print("View did Appear")
                self.viewModel.fetchQuestionAndAnswers()
                viewModel.observeQuestionSelection()
            }
        }
    }
}

struct QuizPage_Previews: PreviewProvider {
    static var previews: some View {
        QuizPage()
    }
}
