//
//  ContentView.swift
//  yarn
//
//  Created by Bora Balos on 12/12/2024.
//

import SwiftUI

struct ContentView: View {
    var messageArray = ["Hi mate!", "How are you doing?", "Isn't Apple the best ecosystem? It's just so clean", "Innit?"]
    var body: some View {
        VStack {
            TitleRow()
            
            ScrollView {
                ForEach(messageArray, id: \.self) {
                    text in MessageBubble(message: Message(id: "12345", text: text, received: true, timestamp: Date()))
                }
            }
            .padding(.top, 10)
            .background(.white)
        }
        .background(Color("Peach"))
    }
}

#Preview {
    ContentView()
}
