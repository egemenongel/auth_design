//
//  ContentView.swift
//  my_design
//
//  Created by Egemen Öngel on 25.01.2024.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack(alignment: .bottom){
            Color.theme.background.ignoresSafeArea()
            bodyView
        }
    }
}

private var bodyView: some View{
    VStack {
        Image("icon")
            .colorInvert()
    }
    .padding(.bottom, 100.0)
    
}

#Preview {
    SplashView()
}
