//
//  ContentView.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 15/04/22.
//

import SwiftUI

struct HomeView: View, AppBackground {
    private enum Images {
        static let quiz = "quiz-bttn-i"
        static let dictionary = "dic-bttn-i"
        static let game = "game_bttn-i"
        static let height: CGFloat = 70.0
        static let pading: CGFloat = 10.0
    }
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .center) {
                background.ignoresSafeArea()
                VStack(spacing: 0) {
                    Button(action: {
                        
                    }) {
                        QuizImage(Images.quiz, height: Images.height)
                    }
                    Button(action: {}) {
                        QuizImage(Images.dictionary, height: Images.height)
                    }.padding(EdgeInsets.init(top: Images.pading, leading: 0, bottom: Images.pading, trailing: 0))
                    Button(action: {}) {
                        QuizImage(Images.game, height: Images.height)
                    }
                }.padding()
            }.navigationBarHidden(true)
                .navigationViewStyle(.stack)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

