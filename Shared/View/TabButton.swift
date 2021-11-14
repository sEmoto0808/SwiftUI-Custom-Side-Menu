//
//  TabButton.swift
//  SwiftUI-Custom-Side-Menu (iOS)
//
//  Created by Sho Emoto on 2021/11/14.
//

import SwiftUI

struct TabButton: View {

    var image: String
    var title: String

    // Selected tab
    @Binding var selectedTab: String
    // For Hero animation Slide
    var animation: Namespace.ID

    var body: some View {

        Button {

            withAnimation(.spring()) {
                selectedTab = title
            }
        } label: {

            HStack(spacing: 15) {

                Image(systemName: image)
                    .font(.title2)
                    .frame(width: 30)

                Text(title)
                    .fontWeight(.semibold)
            }
            .foregroundColor(selectedTab == title ? Color("blue") : .white)
            .padding(.vertical, 12)
            .padding(.horizontal, 10)
            .background(

                // Hero animation
                ZStack {

                    if selectedTab == title {
                        Color.white
                            .opacity(selectedTab == title ? 1 : 0)
                            .clipShape(CustomCorners(corners: [.topRight, .bottomRight], radius: 12))
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    }
                }
            )
        }
    }
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
