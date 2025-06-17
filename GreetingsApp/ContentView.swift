//
//  ContentView.swift
//  GreetingsApp
//
//  Created by Adriano Valumin on 26/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView()

            VStack {
                TitleView()

                Spacer()

                MessagesView()

                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
