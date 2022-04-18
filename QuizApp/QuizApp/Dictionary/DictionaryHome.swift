//
//  DictionaryHome.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 15/04/22.
//

import Foundation
import SwiftUI

struct DictionaryHome: View, AppBackground {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        ZStack(alignment: .center) {
            background.ignoresSafeArea()
        }.customNavigationTitle("Dictionary", backAction: { dismiss()})
    }
}

struct DictionaryHome_Previews: PreviewProvider {
    static var previews: some View {
        QuizHomeView()
    }
}

