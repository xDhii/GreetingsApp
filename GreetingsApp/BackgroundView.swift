//
//  BackgroundView.swift
//  GreetingsApp
//
//  Created by Adriano Valumin on 14/06/25.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [
            .blue,
            Color(red: 139 / 255, green: 80 / 255, blue: 240 / 255),
        ],
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
            .opacity(0.3)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
