//
//  ChatBubble.swift
//  iMsg
//
//  Created by Tejas M R on 19/10/20.
//

import SwiftUI

struct ChatBubble: View {
    @State var message: Message = Message(content: "", user: may, isMe: false, timeStamp: "23:43")
    
    var body: some View {
        if (message.isMe == true) {
            VStack(alignment: .trailing, spacing: 0) {
                
                UserBubble(color: message.user.color, content: message.content, timeStamp: message.timeStamp)
                    .padding(.leading, 40)
                    .padding(.trailing, 10)
            }
        }
        else {
            VStack(alignment: .leading, spacing: 0) {
                NotUserBubble(color: message.user.color, content: message.content, timeStamp: message.timeStamp, username: message.user.name)
                    .padding(.trailing, 40)
                    .padding(.leading, 10)
            }
        }
    }
}

struct UserBubble: View {
    @State var color: Color = Color.blue
    @State var content: String = "Lorem Ipsum"
    @State var timeStamp: String = "23:43"
    @State private var toggleTime: Bool = false
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 0) {
            Text(content)
                .fontWeight(.bold)
                .padding(10)
                .background(color)
                .foregroundColor(.white)
                .cornerRadius(18, corners: [.topLeft, .topRight, .bottomLeft])
            if toggleTime {
                HStack(spacing: 0) {
                    Text("You")
                        .font(.system(size: 13, weight: .bold))
                    Text(" (" + timeStamp + ")")
                        .font(.system(size: 13, weight: .bold))
                }
            }
        }
        .frame(width: UIScreen.main.bounds.size.width - 50, alignment: .trailing)
        .onTapGesture(perform: {
            withAnimation {
                self.toggleTime.toggle()
            }
        })
    }
}

struct NotUserBubble: View {
    @State var color: Color = Color.blue
    @State var content: String = "Lorem Ipsum"
    @State var timeStamp: String = "23:43"
    @State var username: String = "anon"
    @State private var toggleTime: Bool = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            Text(content)
                .fontWeight(.bold)
                .padding(10)
                .background(color)
                .foregroundColor(.white)
                .cornerRadius(18, corners: [.bottomLeft, .topRight, .bottomRight])
                .lineLimit(nil)
                .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                
                .frame(width: UIScreen.main.bounds.size.width - 50, alignment: .leading)
            if toggleTime {
                HStack(spacing: 0) {
                    Text(username)
                        .font(.system(size: 13, weight: .bold))
                    Text(" (" + timeStamp + ")")
                        .font(.system(size: 13, weight: .bold))
                    
                }
            }
        }
        .frame(width: UIScreen.main.bounds.size.width - 50, alignment: .leading)
        .onTapGesture(perform: {
            withAnimation {
                self.toggleTime.toggle()
            }
        })
        
    }
}

struct ChatBubble_Previews: PreviewProvider {
    static var previews: some View {
        ChatBubble(message: Message(content: "Hi! You have won a jackpot of $40,000! Send your bank account and password to claim it now!",  user: you, isMe: false, timeStamp: "23:43"))
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
