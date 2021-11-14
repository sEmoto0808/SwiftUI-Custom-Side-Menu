//
//  HomePage.swift
//  SwiftUI-Custom-Side-Menu (iOS)
//
//  Created by Sho Emoto on 2021/11/14.
//

import SwiftUI

struct TabContentView: View {

    @Binding var selectedTab: String

    // Hiding TabBar
    init(selectedTab: Binding<String>) {
        self._selectedTab = selectedTab
        UITabBar.appearance().isHidden = true
    }

    var body: some View {

        // TabView with tabs
        TabView(selection: $selectedTab) {

            // Views
            HomePage()
                .tag("Home")

            HistoryPage()
                .tag("History")

            NotificationsPage()
                .tag("Notifications")

            SettingsPage()
                .tag("Settings")

            HelpPage()
                .tag("Help")
        }
    }
}

struct TabContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomePage: View {

    var body: some View {

        NavigationView {

            VStack(alignment: .leading, spacing: 20) {

                Image("coffee_cups")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: getRect().width - 50, height: 400)
                    .clipped()
                    .cornerRadius(20)

                VStack(alignment: .leading, spacing: 5) {

                    Text("Coffee Drip")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)

                    Text("Enjoy Coffee Time!")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                }
            }
            .navigationTitle("Home")
        }
    }
}

struct HistoryPage: View {

    var body: some View {

        NavigationView {

            Text("History")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("History")
        }
    }
}

struct NotificationsPage: View {

    var body: some View {

        NavigationView {

            Text("Notifications")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Notifications")
        }
    }
}

struct SettingsPage: View {

    var body: some View {

        NavigationView {

            Text("Settings")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Settings")
        }
    }
}

struct HelpPage: View {

    var body: some View {

        NavigationView {

            Text("Help")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Help")
        }
    }
}
