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
        static let wordQuiz = "word_big"
        static let definitionQuiz = "definition-bttn-5"
    }
    
    var body: some View {
        ZStack(alignment: .center) {
            background.ignoresSafeArea()
            VStack {
                QuizNavigationLinkButton(destination: {
                    QuizHomeView()
                }, imageName: Images.wordQuiz)
                
                QuizNavigationLinkButton(destination: {
                    DictionaryHome()
                }, imageName: Images.definitionQuiz)
            }.padding()
        }.navigationBarHidden(false).navigationTitle("Quiz").navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        QuizHomeView()
    }
}
