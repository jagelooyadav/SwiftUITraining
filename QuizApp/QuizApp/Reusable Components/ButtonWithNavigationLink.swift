//
//  ButtonWithNavigationLink.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 15/04/22.
//

import Foundation
import SwiftUI

/**
 Create custom button view for given background image name, height and navigation destination block
 */
struct ButtonWithNavigationLink<Content: View> : View {
    private let destination: () -> Content
    private let backgroundImageName: String
    private let height: CGFloat
    
    init(backgroundImageName: String, height: CGFloat, destination: @escaping () -> Content) {
        self.destination = destination
        self.backgroundImageName = backgroundImageName
        self.height = height
    }
    public var body: some View  {
        Button(action: {}) {
            NavigationLink {
                destination()
            } label: {
                QuizImage(backgroundImageName, height: height)
            }
        }
    }
}

