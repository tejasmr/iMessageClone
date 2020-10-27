//
//  UserBubble.swift
//  iMsg
//
//  Created by Tejas M R on 25/10/20.
//

import SwiftUI

struct UserBubble: View {
    @State var color: Color = Color.blue
    @State var content: String = "Lorem Ipsum"
    @State var timeStamp: String = "23:43"
    @State private var toggleTime: Bool = false
    @EnvironmentObject var users: Users
    
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
                    Text(users.you.name)
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
        .shadow(radius: 4)
    }
}

struct UserBubble_Previews: PreviewProvider {
    static var previews: some View {
        UserBubble().environmentObject(Users())
    }
}
