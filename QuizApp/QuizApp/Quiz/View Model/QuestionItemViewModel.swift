//
//  QuestionItemViewModel.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 18/04/22.
//

import Foundation

class QuestionItemViewModel: QuestionItemViewData, ObservableObject {
    
    @Published var title: String
    @Published var index: Int
    @Published var isSelected: Bool
    var action: ((QuestionItemViewModel) -> Void)?
    
    init(title: String, isSelected: Bool, index: Int) {
        self.title = title
        self.index = index
        self.isSelected = isSelected
    }
}
