//
//  ChatView.swift
//  iMsg
//
//  Created by Tejas M R on 19/10/20.
//

import SwiftUI


struct ChatView: View {
    @State var currentMessageContent: String = ""
    @State var user: User = User(color: Color.blue, name: "None")
    @State var messages = chatMessages
    @State var you: User
        
    var body: some View {
        VStack(spacing: 0) {
            ScrollView {
                ForEach(messages, id: \.self) { message in
                    ChatBubble(message: message, user: user, you: you)
                }.flip()
            }
            .flip()
            SendMessageTextField(currentMessageContent: $currentMessageContent, messages: $messages)
                .frame(alignment: .center)
                .padding(5)
            
        }
    }
}



struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(you: EnvObj().you)
    }
}



// Helper Code from StackOverFlow for automatic scrolling

extension View {
    public func flip() -> some View {
        return self
            .rotationEffect(.radians(.pi))
            .scaleEffect(x: -1, y: 1, anchor: .center)
    }
}
