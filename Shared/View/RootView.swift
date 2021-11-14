//
//  RootView.swift
//  SwiftUI-Custom-Side-Menu (iOS)
//
//  Created by Sho Emoto on 2021/11/14.
//

import SwiftUI

struct RootView: View {

    // Selected tab
    @State var selectedTab: String = "Home"
    // Animation Namespace
    @Namespace var animation

    var body: some View {
        ZStack {

            Color("blue")
                .ignoresSafeArea()

            // Side Menu
            VStack(alignment: .leading, spacing: 15) {

                // Profile Pic
                Image("coffee_drip")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70)
                    .clipped()
                    .cornerRadius(10)
                // Padding top for Top close button
                    .padding(.top, 50)

                VStack(alignment: .leading, spacing: 6) {

                    Text("Coffee Drip")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)

                    Button {} label: {
                        Text("View Profile")
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .opacity(0.7)
                    }
                }

                // Tab buttons
                VStack(alignment: .leading, spacing: 10) {

                    TabButton(image: "house", title: "Home", selectedTab: $selectedTab, animation: animation)

                    TabButton(image: "clock.arrow.circlepath", title: "History", selectedTab: $selectedTab, animation: animation)

                    TabButton(image: "bell.badge", title: "Notification", selectedTab: $selectedTab, animation: animation)

                    TabButton(image: "gearshape.fill", title: "Settings", selectedTab: $selectedTab, animation: animation)

                    TabButton(image: "questionmark.circle", title: "Help", selectedTab: $selectedTab, animation: animation)
                }
                .padding(.leading, -15)
                .padding(.top, 50)

                Spacer()

                // Log out button
                VStack(alignment: .leading, spacing: 6) {

                    TabButton(image: "rectangle.righthalf.inset.fill.arrow.right", title: "Log out", selectedTab: .constant(""), animation: animation)
                        .padding(.leading, -15)

                    Text("App Version 1.2.34")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .opacity(0.6)
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
