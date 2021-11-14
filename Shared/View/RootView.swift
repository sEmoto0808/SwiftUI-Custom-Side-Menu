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

    var body: some View {
        ZStack {

            Color("blue")
                .ignoresSafeArea()

            // Side Menu
            SideMenu(selectedTab: $selectedTab)

            TabContentView(selectedTab: $selectedTab)
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
