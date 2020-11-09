//
//  Structs.swift
//  iMsg
//
//  Created by Tejas M R on 24/10/20.
//

import SwiftUI

// An Entity to describe a unit in Chats, the other system/user you are talking to or yourself
struct User: Hashable {
    var color: Color = Color.blue
    var name: String = "Anon"
    var colorName: String = "Blue"
}

// The Environment Object used to share data between views
class EnvObj: ObservableObject {
    
    // List of users in your Chats View
    @Published var users: [User]
    
    // Defines profile of the user
    @Published var you: User
    
    // Flag for Sidebar
    @Published var showingSidebar: Bool
    
    // Flag for NewContact
    @Published var showingNewContact: Bool
    
    // Flag for MyProfileView
    @Published var showingMyProfileView: Bool
    
    // Flag for Chats View
    @Published var showingChats: Bool
    
    // Flag for Groups View
    @Published var showingGroups: Bool
    
    // Flag for SettingsView
    @Published var showingSettingsView: Bool
    
    // Flag for ColorMenu
    @Published var showingColorMenu: Bool
    
    // Object for NewContact
    @Published var newContact: NewContactEnvObj
    
    // Constructor to initialize all objects
    init() {
        
        // Set all flags to false initially
        showingSidebar = false
        showingNewContact = false
        showingMyProfileView = false
        showingChats = false
        showingGroups = false
        showingSettingsView = false
        showingColorMenu = false
        
        // Default for the User
        you = User(color: Color.blue, name: "Anon")
        
        // Default for NewContact
        newContact = NewContactEnvObj(userColor: Color.blue, userName: "", userColorName: "Blue")
        
        // Dummy List for users
        self.users = [
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

// Dummy Users
var may = User(color: .red, name: "may")
var you = User(color: .purple, name: "tezz")


// Entity to describe a message
struct Message: Hashable {
    var content: String = ""
    var isMe: Bool = true
    var timeStamp = "23:43"
}

// Encapsulates the Color with the Color Name
struct ChatColor: Hashable {
    var color: Color
    var colorName: String
}

// Dummy Preview for the memes
struct Structs_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}

// Describes the attributes required for NewContact
struct NewContactEnvObj {
    var userColor: Color = Color.blue
    var userName: String = ""
    var userColorName: String = "Blue"
}
