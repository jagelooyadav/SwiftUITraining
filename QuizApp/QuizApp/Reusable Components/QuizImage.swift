//
//  QuizImage.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 15/04/22.
//

import Foundation
import SwiftUI

struct QuizImage: View {
    
    private let imageName: String
    private let height: CGFloat
    
    init(_ imageName: String, height: CGFloat) {
        self.imageName  = imageName
        self.height = height
    }
    var body: some View {
        Image(imageName).resizable().aspectRatio(contentMode: .fit).frame(height: height)
    }
}
