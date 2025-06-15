//
//  TextView.swift
//  GreetingsApp
//
//  Created by Adriano Valumin on 14/06/25.
//

import SwiftUI

struct TextView: View {
    let text: String
    @State var color: Color

    let colors: [Color] = [
        .green, .gray, .yellow, .red, .purple, .orange, .pink, .blue, .teal, .indigo,
        Color(red: 139 / 255, green: 80 / 255, blue: 240 / 255),
        Color(red: 255 / 255, green: 105 / 255, blue: 180 / 255),
        Color(red: 255 / 255, green: 165 / 255, blue: 0 / 255),
        Color(red: 0 / 255, green: 191 / 255, blue: 255 / 255),
    ]

    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(.white)
            .background(color.opacity(0.4))
            .cornerRadius(20)
            .shadow(color: color, radius: 5, x: 10, y: 10)
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.5)) {
                    color = colors.randomElement() ?? .red
                }
            }
    }
}

#Preview {
    TextView(text: "Hello!", color: .blue)
}
