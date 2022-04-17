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
    }

    var body: some View {
        NavigationView {
            ZStack(alignment: .center) {
                background.ignoresSafeArea()
                
                VStack {
                    QuizNavigationLinkButton(destination: {
                        QuizHomeView()
                    }, imageName: Images.quiz)
                    
                    QuizNavigationLinkButton(destination: {
                        DictionaryHome()
                    }, imageName: Images.dictionary)
                    QuizNavigationLinkButton(destination: {
                        GameHome()
                    }, imageName: Images.game)
                }.padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

