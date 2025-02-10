//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Macbook on 2/7/25.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // Mark: - 3. Depth
            Color.customGreenDark
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .offset(y: 12)
            
            
            // Mark: - 2. Light
            Color.customGreenLight
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .offset(y: 3)
                .opacity(0.85)
            
            // Mark: - 1. Surface
            
            LinearGradient(
                colors: [Color.customGreenLight, Color.customeGreenMedium],
                startPoint: .top,
                endPoint: .bottom
            )
            .clipShape(RoundedRectangle(cornerRadius: 40))
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
