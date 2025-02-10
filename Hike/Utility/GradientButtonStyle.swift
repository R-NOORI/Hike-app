//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Macbook on 2/8/25.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional Statment
                // Condition ? A : B
                configuration.isPressed ?
                // A: when user press the button
                LinearGradient(
                    colors: [.customGrayMedium, .customGrayLight ],
                    startPoint: .top,
                    endPoint: .bottom
                ) :
                // B: when the button is not pressed
                LinearGradient(
                    colors: [.customGrayLight, .customGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .clipShape(RoundedRectangle(cornerRadius: 40))
    }
}
