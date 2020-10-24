//
//  ChatRooms.swift
//  iMsg
//
//  Created by Tejas M R on 22/10/20.
//

import SwiftUI

struct ChatRoom: Hashable {
    var chatRoomTitle: String = "null"
    var messages: [Message] = []
}



struct ChatRoomView: View {
    @State var chatRoom: ChatRoom = ChatRoom(chatRoomTitle: "No title")
    
    var body: some View {
        NavigationLink(destination: ChatView(chatRoomTitle: chatRoom.chatRoomTitle).navigationBarTitle(chatRoom.chatRoomTitle, displayMode: .inline)) {
            VStack {
                Text(chatRoom.chatRoomTitle)
                    .padding(5)
                    .frame(width: UIScreen.main.bounds.size.width - 20, alignment: .leading)
            }
        }
    }
}

struct ChatRooms_Previews: PreviewProvider {
    static var previews: some View {
        ChatRoomView()
    }
}
