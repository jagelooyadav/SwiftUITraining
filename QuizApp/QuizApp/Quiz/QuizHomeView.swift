//
//  QuizHomeView.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 15/04/22.
//

import Foundation
import SwiftUI

struct QuizHomeView: View, AppBackground {
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
