//
//  QuizHomeView.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 15/04/22.
//

import Foundation
import SwiftUI

struct QuizHomeView: View, AppBackground {
    private enum Images {
        static let quiz = "quiz-bttn-i"
        static let dictionary = "dic-bttn-i"
        static let game = "game_bttn-i"
        static let height: CGFloat = 70.0
        static let pading: CGFloat = 10.0
    }
    
    var body: some View {
        ZStack(alignment: .center) {
            background.ignoresSafeArea()
        }.navigationBarHidden(false).navigationTitle("Quiz").navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        QuizHomeView()
    }
}