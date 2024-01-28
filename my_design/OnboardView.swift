//
//  LoginView.swift
//  my_design
//
//  Created by Egemen Öngel on 25.01.2024.
//

import SwiftUI

struct OnboardView: View {
    var body: some View {
        VStack(spacing:20){
            Image("icon")
                .renderingMode(.template)
                .foregroundColor(Color.theme.background)
            Text("Account Login")
                .foregroundStyle(Color.theme.black)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac ante ut tellus mollis tempor. Nullam et turpis vel dui accumsan dapibus a eget odio. Praesent id orci ut lectus ullamcorper ullamcorper. ")
                .font(.body)
                .multilineTextAlignment(.center)
                .foregroundStyle(Color.theme.gray)
            CustomButton(
                text:"Register",
                icon: Image(systemName: "arrow.right"),
                clicked:{}
            )
            CustomButton(
                text:"Start Now",
                clicked:{},
                foregroundColor:Color.theme.background,
                backgroundColor:.white
            )
            Button(action: {}){
                Text("How to register an application?")
                    .underline(true)
            }
            .foregroundStyle(Color.theme.background)
            .font(.body)
            
           
            
            
            
            
        }
        .padding(60.0)
        
    }
}

#Preview {
    LoginView()
}
