//
//  QuizResultPage.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 20/04/22.
//

import SwiftUI

struct QuizResultPage: View, AppBackground {
    @ObservedObject private var viewModel: QuizResultViewModel
    @Environment(\.dismiss) private var dismiss
    
    init(questions: [QuestionViewModel]) {
        self.viewModel = QuizResultViewModel.init(questions: questions)
    }
    
    var body: some View {
        ZStack {
            background.ignoresSafeArea()
            Text("Welcome to result page")
        }.customNavigationTitle("Results", backAction: { dismiss() })
    }
}
