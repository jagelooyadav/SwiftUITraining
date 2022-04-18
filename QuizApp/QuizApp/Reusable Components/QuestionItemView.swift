//
//  QuestionItemView.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 18/04/22.
//

import SwiftUI

protocol QuestionItemViewData: ObservableObject {
    associatedtype Object: QuestionItemViewData
    var title: String { get }
    var index: Int { get }
    var isSelected: Bool { get set }
    var action: ((Object) -> Void)? { get set }
}

struct QuestionItemView<Item: QuestionItemViewData>: View {
    @ObservedObject private var data: Item
    init(data: Item) {
        self.data = data
    }
    
    var body: some View {
        HStack {
            Button(action: { data.action?(data as! Item.Object) }) {
                Image(systemName: data.isSelected ? "dot.circle" : "circle").foregroundColor(.white)
                Text(String(format: "%C:", 65 + data.index)).bold().foregroundColor(.white)
                Text(data.title).font(Font.body).foregroundColor(.white)
            }
        }
    }
}
