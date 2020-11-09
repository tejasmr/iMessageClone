//
//  ChatMainView.swift
//  iMsg
//
//  Created by Tejas M R on 25/10/20.
//

import SwiftUI

// This View Encapsulates the List of users and

struct ChatMainView: View {
    @State var showingNewContact = false
    @State var showingSidebar = false
    @EnvironmentObject var envObj: EnvObj
    
    var body: some View {
        VStack {
            UserList()
        }
        .modifier(NavigationModifier(title: "Chats"))
    }
}

struct ChatMainView_Previews: PreviewProvider {
    static var previews: some View {
        ChatMainView()
            .environmentObject(EnvObj())
    }
}

