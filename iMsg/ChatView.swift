//
//  ChatView.swift
//  iMsg
//
//  Created by Tejas M R on 19/10/20.
//

import SwiftUI

struct User: Hashable {
    var color: Color = Color.blue
    var name: String = "anon"
}


var may = User(color: .red, name: "may")
var you = User(color: .purple, name: "tezz")


struct Message: Hashable {
    var content: String = ""
    var user = User(color: Color.blue, name: "anon")
    var isMe: Bool = true
    var timeStamp = "23:43"
}

struct ChatView: View {
    
    @State var currentMessageContent: String = ""
    
    @State var messages = [
        Message(content: "Hello anon", user: you, isMe: true, timeStamp: "09:34"),
        Message(content: "Hello tezz", user: may, isMe: false, timeStamp: "16:41"),
        Message(content: "How are you?", user: you, isMe: true, timeStamp: "16:41"),
        Message(content: "I have corona virus, Send me $3000 right now and god will bless you!", user: may, isMe: false, timeStamp: "16:41")
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
            HStack {
                TextField("Enter Message", text: $currentMessageContent)
                    .disableAutocorrection(true)
                    
                    
                Button(action: {
                    if (currentMessageContent != "") {
                        messages.append(Message(content: currentMessageContent,user: you, isMe: true, timeStamp: "23:44"))
                        currentMessageContent=""
                    }
                }){
                    Text("Send")
                        .foregroundColor(Color.blue)
                }
                .padding(5)
            }
            .padding(11)
            .foregroundColor(Color.gray)
            .overlay(RoundedRectangle(cornerRadius: 50)
                        .stroke(Color.gray, lineWidth: 2))
            .padding(5)
            
        }
        
        
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
