//
//  CustomNavigationTitle.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 18/04/22.
//

import SwiftUI

protocol CustomNavigationTitle: View {
    associatedtype SomeView: View
    func customNavigationTitle(_ string: String, backAction: (() -> Void)?) -> Self.SomeView
}

extension CustomNavigationTitle {
    func customNavigationTitle(_ string: String, backAction: (() -> Void)?) -> some View {
        toolbar {
            ToolbarItem(placement: .principal) {
                Text(string).foregroundColor(.white).font(Font.system(size: 18, weight: .bold, design: .rounded))
            }
        }.navigationBarBackButtonHidden(true).navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: backButtonView(action: backAction))
    }
    
    private func backButtonView(action: (() -> Void)?) -> some View {
        Button(action: {
            action?()
        }) {
            Image(systemName: "chevron.left").padding(EdgeInsets.init(top: 10.0, leading: 0, bottom: 10.0, trailing: 20.0))
        }
    }
}
extension ZStack: CustomNavigationTitle {}
