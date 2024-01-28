//
//  CustomButton.swift
//  my_design
//
//  Created by Egemen Öngel on 28.01.2024.
//

import SwiftUI

struct CustomButton: View {
    var text: String
    var icon: Image?
    var clicked: (() -> Void)
    var foregroundColor: Color?
    var backgroundColor: Color?
   

    var body: some View {
        let foregroundCol = foregroundColor == nil
        ?.white
        :foregroundColor!
        
        Button(action: clicked) {
            HStack {
                icon
                Text(text)
            }
            .frame(width: 250)
            .foregroundColor(foregroundCol)
            .padding(10)
            .background(
                RoundedRectangle(cornerRadius: 10)
                  .stroke(foregroundCol, lineWidth: 2)
                  .fill(
                    backgroundColor == nil 
                    ? Color.theme.background
                    :backgroundColor!)
            )
        }
       
    }
}

#Preview {
    CustomButton(
        text:"Button",
//        icon:Image(systemName: "globe"),
        clicked: {}
    )
}
