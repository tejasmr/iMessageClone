//
//  ChatBubble.swift
//  iMsg
//
//  Created by Tejas M R on 19/10/20.
//

import SwiftUI

// If isMe is set then we show the UserBubble, else we show it in the form of NotUserBubble

struct ChatBubble: View {
    @State var message: Message = Message(content: "", isMe: false, timeStamp: "23:43")
    @State var user: User = User(color: Color.blue, name: "None")
    @State var you: User
    
    var body: some View {
        if (message.isMe == true) {
            VStack(alignment: .trailing, spacing: 0) {
                
                UserBubble(color: you.color, content: message.content, timeStamp: message.timeStamp)
                    .padding(.leading, 40)
                    .padding(.trailing, 10)
            }
        }
        else {
            VStack(alignment: .leading, spacing: 0) {
                NotUserBubble(color: user.color, content: message.content, timeStamp: message.timeStamp, username: user.name)
                    .padding(.trailing, 40)
                    .padding(.leading, 10)
            }
        }
    }
}


struct ChatBubble_Previews: PreviewProvider {
    static var previews: some View {
        ChatBubble(message: Message(content: "Hi! You have won a jackpot of $40,000! Send your bank account and password to claim it now!",  isMe: true, timeStamp: "23:43"), user: User(color: Color.blue, name: "None"), you: User(color: Color.blue, name: "Anon"))
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
