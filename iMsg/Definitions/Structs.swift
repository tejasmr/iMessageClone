//
//  Structs.swift
//  iMsg
//
//  Created by Tejas M R on 24/10/20.
//

import SwiftUI


struct User: Hashable {
    var color: Color = Color.blue
    var name: String = "Anon"
    var colorName: String = "Blue"
}

class Users: ObservableObject {
    
    @Published var list: [User]
    @Published var you: User
    @Published var showingSidebar: Bool
    @Published var showingNewContact: Bool
    @Published var showingMyProfileView: Bool
    @Published var showingChats: Bool
    @Published var showingGroups: Bool
    @Published var showingSettingsView: Bool
    @Published var showingColorMenu: Bool
    
    init() {
        showingSidebar = false
        showingNewContact = false
        showingMyProfileView = false
        showingChats = false
        showingGroups = false
        showingSettingsView = false
        showingColorMenu = false
        you = User(color: Color.blue, name: "Anon")
        self.list = [
            User(color: Color.blue, name: "Blue"),
            User(color: Color.red, name: "Red"),
            User(color: Color.black, name: "Black"),
            User(color: Color.orange, name: "Orange"),
            User(color: Color.gray, name: "Gray"),
            User(color: Color.yellow, name: "Yellow"),
            User(color: Color.purple, name: "Purple"),
            User(color: Color.green, name: "Green"),
            User(color: Color.blue, name: "Blue"),
            User(color: Color.red, name: "Red"),
            User(color: Color.black, name: "Black"),
            User(color: Color.orange, name: "Orange"),
            User(color: Color.gray, name: "Gray"),
            User(color: Color.yellow, name: "Yellow"),
            User(color: Color.purple, name: "Purple"),
            User(color: Color.green, name: "Green")
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
