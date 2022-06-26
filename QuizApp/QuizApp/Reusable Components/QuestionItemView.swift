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
    var action: ((Self.Object?) -> Void)? { get set }
}

struct QuestionItemView<Item: QuestionItemViewData>: View {
    @ObservedObject private var data: Item
    init(data: Item) {
        self.data = data
    }
    
    var body: some View {
        Button(action: { data.action?(data as? Item.Object) }) {
            HStack(alignment: .top) {
                Image(systemName: data.isSelected ? "dot.circle" : "circle").foregroundColor(.black)
                Text(String(format: "%C:", 65 + data.index)).bold().foregroundColor(.black)
                Text(data.title).font(Font.body).foregroundColor(.black).multilineTextAlignment(.leading)
            }.frame(alignment: .leading)
        }
    }
}
