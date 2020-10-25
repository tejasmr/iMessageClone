//
//  Structs.swift
//  iMsg
//
//  Created by Tejas M R on 24/10/20.
//

import SwiftUI


struct User: Hashable {
    var color: Color = Color.blue
    var name: String = "anon"
}

class Users: ObservableObject {
    
    @Published var list: [User]
    @Published var showingSidebar: Bool
    @Published var showingNewContact: Bool
    init() {
        showingSidebar = false
        showingNewContact = false
        self.list = [
            User(color: Color.blue, name: "May"),
            User(color: Color.red, name: "Tezz")
        ]
    }
}

var may = User(color: .red, name: "may")
var you = User(color: .purple, name: "tezz")



struct Message: Hashable {
    var content: String = ""
    var isMe: Bool = true
    var timeStamp = "23:43"
}

struct ChatRoom: Hashable, Codable {
    var chatRoomTitle: String = "null"
    var chatRoomColor: String = "Blue"
}

class ChatRooms: ObservableObject {
    
    @Published var rooms: [ChatRoom]
    
    init() {
        self.rooms = [
            ChatRoom(chatRoomTitle: "May", chatRoomColor: "Red"),
            ChatRoom(chatRoomTitle: "Happy", chatRoomColor: "Green")
        ]
    }
}

struct ChatColor: Hashable {
    var color: Color
    var colorName: String
}


struct Structs_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
