//
//  GameHome.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 15/04/22.
//

import Foundation
import SwiftUI

struct GameHome: View, AppBackground {
    var body: some View {
        ZStack(alignment: .center) {
            background.ignoresSafeArea()
        }.navigationBarHidden(false).navigationTitle("Game").navigationBarTitleDisplayMode(.inline)
    }
}

struct QuizHomeView_Previews: PreviewProvider {
    static var previews: some View {
        QuizHomeView()
    }
}

