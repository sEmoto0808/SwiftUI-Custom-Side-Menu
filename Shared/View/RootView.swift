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
    @State var showMenu = false

    var body: some View {
        ZStack {

            Color("blue")
                .ignoresSafeArea()

            // Side Menu
            ScrollView(getRect().height < 750 ? .vertical : .init(), showsIndicators: false) {
                SideMenu(selectedTab: $selectedTab)
            }

            ZStack {

                // Two background cards

                Color.white
                    .opacity(0.5)
                    .cornerRadius(showMenu ? 15 : 0)
                // Shadow
                    .shadow(color: Color.black.opacity(0.07), radius: 5, x: -5, y: 0)
                    .offset(x: showMenu ? -25 : 0)
                    .padding(.vertical, 30)

                Color.white
                    .opacity(0.4)
                    .cornerRadius(showMenu ? 15 : 0)
                // Shadow
                    .shadow(color: Color.black.opacity(0.07), radius: 5, x: -5, y: 0)
                    .offset(x: showMenu ? -50 : 0)
                    .padding(.vertical, 60)

                TabContentView(selectedTab: $selectedTab)
                    .cornerRadius(showMenu ? 15 : 0)
            }
            // Scaling and moving the view
            .scaleEffect(showMenu ? 0.84 : 1)
            .offset(x: showMenu ? getRect().width - 120 : 0)
            .ignoresSafeArea()
            .overlay(

                // Menu button
                Button() {

                    withAnimation(.spring()) {

                        showMenu.toggle()
                    }
                } label: {

                    // Animated drawer button
                    VStack(spacing: 5) {

                        Capsule()
                            .fill(showMenu ? Color.white : Color.primary)
                            .frame(width: 30, height: 3)
                        // Rotating
                            .rotationEffect(.init(degrees: showMenu ? -50 : 0))
                            .offset(x: showMenu ? 2 : 0, y: showMenu ? 9 : 0)

                        VStack(spacing: 5) {

                            Capsule()
                                .fill(showMenu ? Color.white : Color.primary)
                                .frame(width: 30, height: 3)

                            // Moving up when clicked
                            Capsule()
                                .fill(showMenu ? Color.white : Color.primary)
                                .frame(width: 30, height: 3)
                                .offset(y: showMenu ? -8 : 0)
                        }
                        .rotationEffect(.init(degrees: showMenu ? 50 : 0))
                    }
                }
                    .padding()
                ,alignment: .topLeading
            )
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}

// Extending View to get screen size
extension View {

    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}
