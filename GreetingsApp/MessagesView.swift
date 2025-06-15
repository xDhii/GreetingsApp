//
//  MessagesView.swift
//  GreetingsApp
//
//  Created by Adriano Valumin on 14/06/25.
//

import SwiftUI

struct MessagesView: View {
    let messages: [DataItemModel] = [
        .init(text: "Hellow there!", color: .green),
        .init(text: "Welcome to Swift Programming", color: .gray),
        .init(text: "Are you ready to start coding", color: .yellow),
        .init(text: "and exploring SwiftUI?", color: .red),
        .init(text: "Boom!", color: .purple),
    ]

    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) { item in
                TextView(text: item.text, color: item.color)
            }
        }
    }
}

#Preview {
    MessagesView()
}
