//
//  TitleView.swift
//  GreetingsApp
//
//  Created by Adriano Valumin on 14/06/25.
//

import SwiftUI

struct TitleView: View {
    let lineWidth = 15.0
    let diameter = 70.0

    @State private var isRotated: Bool = false
    var angle: Angle {
        isRotated ? .zero : .degrees(360)
    }

    var angularGradient: AngularGradient {
        AngularGradient(
            gradient: Gradient(
                colors: [.pink, .purple, .blue, .green, .yellow, .orange, .red, .pink]),
            center: .center,
            angle: .zero
        )
    }

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Greetings App")
                    .font(.largeTitle)
                    .fontWeight(.semibold)

                Text("Exploring iOS Proggramming")
                    .font(.headline)
                    .fontWeight(.thin)
            }

            Spacer()

            Circle()
                .strokeBorder(angularGradient, lineWidth: lineWidth)
                .rotationEffect(angle)
                .frame(width: diameter, height: diameter)
                .onTapGesture {
                    withAnimation {
                        isRotated.toggle()
                    }
                }
        }
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
}
