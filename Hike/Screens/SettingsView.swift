//
//  SettingsView.swift
//  Hike
//
//  Created by Macbook on 2/9/25.
//

import SwiftUI

struct SettingsView: View {
    
    private let appIcons: [String] = [
        "AppIcon-Backpack",
        "AppIcon-Camera",
        "AppIcon-Campfire",
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom"
    ]
    var body: some View {
        List {
            
            // Header
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(
                        colors: [.customGreenLight, .customeGreenMedium, .customGreenDark],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .padding(.top, 8)
                
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hikes which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do someday again. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust of the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundStyle(.colorGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            } // End of Header
            .listRowSeparator(.hidden)
            
            Section(header: Text("Alternate Icons")) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(appIcons.indices, id: \.self) { item in
                            Button {
                                UIApplication.shared.setAlternateIconName(appIcons[item]) {
                                    error in
                                    if error != nil {
                                        print("Faild to update app icon name: \(String(describing: error?.localizedDescription))")
                                    } else {
                                        print("Success, you have change the app icon to: \(appIcons[item])")
                                    }
                                }
                            } label: {
                                Image("\(appIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                            }
                            .buttonStyle(.borderless)
                        }
                    }
                } // Scroll View
                .padding(.top, 12)
                Text("Choose your favorite app icon from the collection above.")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .font(.footnote)
                    .foregroundStyle(.primary)
                    .padding(.bottom, 12)
            }
            .listRowSeparator(.hidden)
            
            Section(
                header: Text("About the app"),
                footer: HStack {
                    Spacer()
                    Text("Copyright © All rights reserved.")
                    Spacer()
                }
                    .padding(.vertical, 8)
            ) {
                // basic labeled content
//                LabeledContent("Application", value: "Hike")
                
                ListRowView(
                    rowLabel: "Application",
                            rowIcon: "apps.iphone",
                            rowContent: "Hike",
                            rowTintColor: .blue
                )
                ListRowView(
                    rowLabel: "Compatibility",
                            rowIcon: "info.circle",
                            rowContent: "iOS, iPad",
                            rowTintColor: .red
                )
                ListRowView(
                    rowLabel: "Technology",
                            rowIcon: "swift",
                            rowContent: "swift",
                    rowTintColor: .orange
                )
                ListRowView(
                    rowLabel: "Version",
                            rowIcon: "gear",
                            rowContent: "1.0",
                    rowTintColor: .purple
                )
                ListRowView(
                    rowLabel: "Developer",
                            rowIcon: "ellipsis.curlybraces",
                            rowContent: "Rahmatnoori",
                    rowTintColor: .mint
                )
                
                ListRowView(rowLabel: "Website", rowIcon: "globe", rowTintColor: .pink, rowLinkLabel: "r-noori", rowLinkAddress: "https://google.com")
            } // section
            
        }
    }
}

#Preview {
    SettingsView()
}
