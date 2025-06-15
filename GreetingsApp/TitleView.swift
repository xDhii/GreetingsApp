//
//  TitleView.swift
//  GreetingsApp
//
//  Created by Adriano Valumin on 14/06/25.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Greetings App")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("Exploring iOS Proggramming")
                    .font(.headline)
                .fontWeight(.thin)    }

            Spacer()

            Circle()
                .strokeBorder(.red, lineWidth: 1)
                .frame(width: 70, height: 70)
        }
    }
}

#Preview {
    VStack{
        TitleView()
        Spacer()
    }
    .padding()
}
