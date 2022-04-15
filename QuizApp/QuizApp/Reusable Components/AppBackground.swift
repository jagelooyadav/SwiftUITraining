//
//  AppBackground.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 15/04/22.
//

import Foundation
import SwiftUI

protocol AppBackground {
    var background: Color { get }
}

extension AppBackground {
    var background: Color {
        return Color(red: 50.0/255.0, green: 150.0/255.0, blue: 250.0/255.0, opacity: 1.0)
    }
}
