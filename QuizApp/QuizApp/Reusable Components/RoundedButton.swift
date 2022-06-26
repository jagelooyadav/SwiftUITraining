//
//  RoundedButton.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 18/04/22.
//

import SwiftUI
import UIKit

enum ButtonType {
    case primary
    case secondary
}

class ButtonProperties: ObservableObject {
    var name: String {
        return "Some name"
    }
}

struct RoundedButton: View  {
    private let title: String
    private let action: () -> Void
    private let backgroundColor: Color
    
    @State var disable: Bool = false
    
    @EnvironmentObject var properties: ButtonProperties
    
    init(title: String,
         backgroundColor: Color = AppTheme.orange, action: @escaping () -> Void) {
        self.title = title
        self.action = action
        self.backgroundColor = backgroundColor
    }
    
    var body: some View {
        VStack(alignment: .center) {
            Button.init(action: action) {
                Text(title).padding(EdgeInsets.init(top: 10.0, leading: 30.0, bottom: 10.0, trailing: 30.0)).font(Font.headline.bold())
            }.background(backgroundColor).cornerRadius(22.0).overlay(RoundedRectangle(cornerRadius: 22.0)
                .stroke(AppTheme.blueBorder, lineWidth: 5)).disabled(disable)
        }.onAppear() {
            print(properties.name)
        }
    }
}
