//
//  ChatView.swift
//  iMsg
//
//  Created by Tejas M R on 19/10/20.
//

import SwiftUI

struct Message: Hashable {
    var content: String = ""
    var color: Color = Color.blue
    var username: String = "anon"
    var isMe: Bool = true
    var timeStamp = "23:43"
}

struct ChatView: View {
    var messages = [
            Message(content: "Hello anon", color: .blue, username: "tezz", isMe: true, timeStamp: "09:34"),
            Message(content: "Hello tezz", color: .red, username: "may", isMe: false, timeStamp: "16:41"),
            Message(content: "How are you?", color: .blue, username: "may", isMe: true, timeStamp: "16:41"),
            Message(content: "I have corona virus, Send me $3000 right now and god will bless you!", color: .red, username: "may", isMe: false, timeStamp: "16:41")
        ]
    
    
    var body: some View {
        VStack {
            Text("Chat Room")
                .font(.system(size: 30, weight: .bold))
            ScrollView {
                ForEach(messages, id: \.self) { message in
                    ChatBubble(message: message)
                        
                }
            }
        }
        
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
