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
        return AppTheme.grayColor
    }
}

enum AppTheme {
    static let orange = Color(red: 242.0/255.0, green: 104.0/255.0, blue: 28.0/255.0)
    static let blueBackground = Color(red: 50.0/255.0, green: 150.0/255.0, blue: 250.0/255.0, opacity: 1.0)
    static let blueBorder = Color(red: 41.0/255.0, green: 120.0/255.0, blue: 200.0/255.0)
    static let grayColor = Color(red: 236.0/255.0, green: 234.0/255.0, blue: 239.0/255.0, opacity: 1.0)
}

