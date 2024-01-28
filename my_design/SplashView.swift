//
//  ContentView.swift
//  my_design
//
//  Created by Egemen Öngel on 25.01.2024.
//

import SwiftUI


struct SplashView: View {
    @State private var path = NavigationPath()
    @State var timeRemaining = 3
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        NavigationStack(path:$path) {
            ZStack(alignment: .bottom){
                Color.theme.background.ignoresSafeArea()
                bodyView
            }
            .navigationDestination(for: String.self) { view in
               if (view == "OnboardView") {
                   OnboardView()
               }
           }
            .onReceive(timer) { _ in
                if (timeRemaining > 0) {
                    timeRemaining -= 1
                }
                if(timeRemaining==0){
                    path.append("OnboardView")
                    timer.upstream.connect().cancel()
                }
        }
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
