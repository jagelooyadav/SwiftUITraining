//
//  ButtonWithNavigationLink.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 15/04/22.
//

import SwiftUI

/**
 Create custom button view for given background image name, height and navigation destination block
 */
struct QuizNavigationLinkButton<Content: View>: View {
    
    private let destination: () -> Content
    
    private let imageName: String
    init(destination: @escaping () -> Content, imageName: String) {
        self.destination = destination
        self.imageName = imageName
    }
    var body: some View {
        Button(action: {
            print("I am clicking here")
        }) {
            NavigationLink.init(destination: {
                destination()
            }) {
                Image(imageName).resizable().aspectRatio(contentMode: .fit).frame(height: 60.0)
            }
        }
    }
}

