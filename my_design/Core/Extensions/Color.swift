//
//  Color.swift
//  my_design
//
//  Created by Egemen Öngel on 25.01.2024.
//

import Foundation
import SwiftUI

extension Color{
    
    static let theme = ColorTheme()
}

struct ColorTheme{
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let black = Color("BlackColor")
    let gray = Color("GrayColor")
}
