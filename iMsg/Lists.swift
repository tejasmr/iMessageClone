//
//  Lists.swift
//  iMsg
//
//  Created by Tejas M R on 24/10/20.
//

import Foundation
import SwiftUI
 


var chatColors: [ChatColor] = [
    ChatColor(color: Color.blue, colorName: "Blue"),
    ChatColor(color: Color.red, colorName: "Red"),
    ChatColor(color: Color.green, colorName: "Green")
]


var chatMessages: [Message] = [
    Message(content: "Hello anon", isMe: true, timeStamp: "09:34"),
    Message(content: "Hello tezz", isMe: false, timeStamp: "16:41"),
    Message(content: "How are you?", isMe: true, timeStamp: "16:41"),
    Message(content: "I have corona virus, Send me $3000 right now and god will bless you!", isMe: false, timeStamp: "16:41"),
    Message(content: "Hello anon", isMe: true, timeStamp: "09:34"),
    Message(content: "Hello tezz", isMe: false, timeStamp: "16:41"),
    Message(content: "How are you?", isMe: true, timeStamp: "16:41"),
    Message(content: "I have corona virus, Send me $3000 right now and god will bless you!", isMe: false, timeStamp: "16:41")
]
