//
//  ListRowView.swift
//  Hike
//
//  Created by Macbook on 2/9/25.
//

import SwiftUI

struct ListRowView: View {
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkAddress: String? = nil
    
    var body: some View {
        // Advance labeled content
        LabeledContent {
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundStyle(.primary)
                    .fontWeight(.heavy)
                
            } else if (rowLinkLabel != nil && rowLinkAddress != nil) {
                Link(rowLinkLabel!, destination: URL(string: rowLinkAddress!)!)
                    .foregroundStyle(.pink)
                    .fontWeight(.heavy)
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List {
        ListRowView(
            rowLabel: "Designer",
            rowIcon: "paintpalette",
            rowContent: nil,
            rowTintColor: .pink,
            rowLinkLabel: "Website",
            rowLinkAddress: "https://r-noori.com"
        )
    }
}
