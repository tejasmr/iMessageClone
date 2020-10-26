//
//  SendMessageTextField.swift
//  iMsg
//
//  Created by Tejas M R on 25/10/20.
//

import SwiftUI

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

struct SendMessageTextField_Previews: PreviewProvider {
    static var previews: some View {
        Text("No Preview")
    }
}
