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
    @State var isRsultPageActive = false
    var body: some View {
        ZStack(alignment: .top) {
            background.ignoresSafeArea()
            createContent()
            Spacer()
        }.customNavigationTitle("Quiz", backAction: { dismiss() })
    }
}

extension QuizPage {
    @ViewBuilder
    private func createContent() -> some View {
        VStack(alignment: .center) {
            VStack(alignment: .center, spacing: 30) {
                if let currentQuestion = viewModel.currentQuestion {
                    QuestionView(data: currentQuestion)
                }
                Spacer()
                HStack(spacing: 20.0) {
                    if viewModel.shouldShowPrev {
                        RoundedButton(title: "Prev") {
                            viewModel.goToPrevious()
                        }
                    }
                    NavigationLink(isActive: $isRsultPageActive, destination: { QuizResultPage(questions: viewModel.questions)},
                                   label: { EmptyView() })
                    RoundedButton(title: viewModel.shouldShowNext ? "Next" : "Submit") {
                        if viewModel.shouldShowNext {
                            self.viewModel.fetchQuestionAndAnswers()
                            viewModel.observeQuestionSelection()
                        } else {
                            isRsultPageActive = true
                        }
                    }.disabled(viewModel.shouldDisableNextButton)
                    
                    Text( "\(viewModel.questions.count)" + " of 10").foregroundColor(AppTheme.orange)
                }.padding(EdgeInsets.init(top: 0, leading: 0, bottom: 50, trailing: 0))
                
            }.onAppear() {
                viewModel.reset()
                self.viewModel.fetchQuestionAndAnswers()
                viewModel.observeQuestionSelection()
            }
        }
    }

}
