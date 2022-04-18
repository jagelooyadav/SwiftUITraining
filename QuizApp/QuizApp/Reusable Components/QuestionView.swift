//
//  QuestionView.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 18/04/22.
//

import SwiftUI

protocol QuestionViewData: ObservableObject {
    associatedtype QuestionItem: QuestionItemViewData
    var question: String { get }
    var choices: [Self.QuestionItem] { get }
}

struct QuestionView<Question: QuestionViewData>: View {
    
    @ObservedObject private var data: Question
    
    init(data: Question) {
        self.data = data
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            Text(data.question).font(Font.title3).bold().foregroundColor(.white)
            ForEach(0..<data.choices.count, id: \.self) { index in
                QuestionItemView(data: self.data.choices[index])
                        }
        }.padding()
    }
}
