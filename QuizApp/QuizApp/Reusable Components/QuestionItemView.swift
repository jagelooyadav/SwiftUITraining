//
//  QuestionItemView.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 18/04/22.
//

import SwiftUI

protocol QuestionItemViewData {
    var title: String { get }
    var index: Int { get }
    var isSelected: Bool { get }
}

struct QuestionItemView: View {
    private let data: QuestionItemViewData
    init(data: QuestionItemViewData) {
        self.data = data
    }
    
    var body: some View {
        HStack {
            Image(systemName: data.isSelected ? "dot.circle" : "circle").foregroundColor(.white)
            Text(String(format: "%C:", 65 + data.index)).bold().foregroundColor(.white)
            Text(data.title).font(Font.body).foregroundColor(.white)
        }
    }
}
