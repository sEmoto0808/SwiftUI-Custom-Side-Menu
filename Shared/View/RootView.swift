//
//  RootView.swift
//  SwiftUI-Custom-Side-Menu (iOS)
//
//  Created by Sho Emoto on 2021/11/14.
//

import SwiftUI

struct RootView: View {
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
                VStack(spacing: 0) {}
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
