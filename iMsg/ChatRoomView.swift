//
//  ChatRooms.swift
//  iMsg
//
//  Created by Tejas M R on 22/10/20.
//

import SwiftUI



struct ChatRoomView: View {
    @State var user: User = User(color: Color.blue, name: "None")
    
    var body: some View {
        NavigationLink(destination: ChatView(user: user).navigationBarTitle(user.name, displayMode: .inline)) {
            HStack {
                Text(user.name)
                    .fontWeight(.bold)
                    .padding(5)
                    .foregroundColor(.black)
                    .background(Color.white)
                Spacer()
                Image("GoArrow")
                    .resizable()
                    .frame(width: 20, height: 20)
            }
            
            .frame(width: UIScreen.main.bounds.size.width - 20, alignment: .leading)
        }
    }
}

struct ChatRooms_Previews: PreviewProvider {
    static var previews: some View {
        ChatRoomView()
    }
}
