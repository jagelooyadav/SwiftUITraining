//
//  DictionaryHome.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 15/04/22.
//

import Foundation
import SwiftUI

struct DictionaryHome: View, AppBackground {
    var body: some View {
        ZStack(alignment: .center) {
            background.ignoresSafeArea()
        }.navigationBarHidden(false).navigationTitle("Dictionary").navigationBarTitleDisplayMode(.inline)
    }
}

struct DictionaryHome_Previews: PreviewProvider {
    static var previews: some View {
        QuizHomeView()
    }
}

