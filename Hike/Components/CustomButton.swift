//
//  CustomButton.swift
//  Hike
//
//  Created by Macbook on 2/8/25.
//

import SwiftUI

struct CustomButton: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    .linearGradient(
                        colors: [.white, .customGreenLight, .customeGreenMedium],
                        startPoint: .top,
                        endPoint: .bottom))
            Circle()
                .stroke(LinearGradient(
                    colors: [.customGrayLight, .customGrayMedium],
                    startPoint: .top, endPoint: .bottom
                ),lineWidth: 4)
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(LinearGradient(
                    colors: [.customGrayLight, .customGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom
                    
                ))
        }
        .frame(width: 58, height: 58)
            
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CustomButton()
        
        .padding()
}
