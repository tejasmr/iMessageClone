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
        
    var body: some View {
        VStack(spacing: 0) {
            ScrollView {
                ForEach(messages, id: \.self) { message in
                    ChatBubble(message: message, user: user)
                }.flip()
            }
            .flip()
            SendMessageTextField(currentMessageContent: $currentMessageContent, messages: $messages)
                .frame(alignment: .center)
                .padding(5)
            
        }
    }
}

struct SendMessageTextField: View {
    @Binding var currentMessageContent: String
    @Binding var messages: [Message]
    
    var body: some View {
        HStack {
            TextField("Enter Message", text: $currentMessageContent)
                .disableAutocorrection(true)
                .padding(15)
            
            
            Button(action: {
                if (currentMessageContent != "") {
                    messages.append(Message(content: currentMessageContent, isMe: true, timeStamp: "23:44"))
                    currentMessageContent=""
                }
            }){
                Image("SendButton")
                    .resizable()
                    .frame(width:35, height:35)
                    .padding(.trailing, 5)
            }

        }
        .foregroundColor(Color.gray)
        .overlay(RoundedRectangle(cornerRadius: 50)
                    .stroke(Color.gray, lineWidth: 1)
                    .shadow(radius: 20))
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
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
