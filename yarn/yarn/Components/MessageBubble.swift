//
//  MessageBubble.swift
//  yarn
//
//  Created by Bora Balos on 12/12/2024.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    var body: some View {
        VStack(alignment: message.received ? .leading : .trailing) {
            HStack {
                Text(message.text)
                    .padding()
                    .background(message.received ? Color("Gray") : Color("Peach"))
                    .cornerRadius(30)
            }
            .frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
        }
        .frame(maxWidth: .infinity, alignment: message.received ? .leading : .trailing)
        .padding(message.received ? .leading : .trailing)
        .padding(.horizontal, 10)
    }
}

#Preview {
    MessageBubble(message: Message(id: "12345", text: "Apple is the best ecosystem, no doubt.", received: false, timestamp: Date()))
}
