//
//  ContentView.swift
//  iMsg
//
//  Created by Tejas M R on 19/10/20
//

import SwiftUI
import UIKit

var chatRooms = [
    ChatRoom(chatRoomTitle: "May"),
    ChatRoom(chatRoomTitle: "Happy"),
    ChatRoom(chatRoomTitle: "Ram")
]


struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(chatRooms, id: \.self) { chatRoom in
                    ChatRoomView(chatRoom: chatRoom)
                }
            }
            .navigationBarTitle("iMsg", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
