//
//  CardView.swift
//  Hike
//
//  Created by Macbook on 2/7/25.
//

import SwiftUI

struct CardView: View {
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowSheet: Bool = false
    
    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        
        imageNumber = randomNumber
    }
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                VStack(alignment: .leading){
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom
                                )
                            )
                        
                        Spacer()
                        
                        Button {
                            isShowSheet.toggle()
                        } label: {
                            CustomButton()
                        }
                        .sheet(isPresented: $isShowSheet) {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
                        }
                    }
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundStyle(Color.customGrayMedium)
                }
                .padding(.horizontal, 30)
                
                ZStack {
                    CustomCircleView()
                    
                    // image view
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                
                // Footer
                Button {
                    print("imag enumber: \(imageNumber)")
                    randomImage()
                } label: {
                    Text("Explore more")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.customGreenLight, .customeGreenMedium],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow( color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                    
                }
                .buttonStyle(GradientButton())
//                .buttonStyle(.borderedProminent)
//                .tint(.indigo)
            }
        } // Card View
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
