//
//  UserList.swift
//  iMsg
//
//  Created by Tejas M R on 25/10/20.
//

import SwiftUI

struct UserList: View {
    @EnvironmentObject var users: Users
    
    var body: some View {
        ScrollView {
            ForEach(users.list, id: \.self) { user in
                Divider()
                    .padding(.horizontal, 20)
                ChatRoomView(user: user)
            }
            Divider()
                .padding(.horizontal, 20)
        }
        .padding(.top)
    }
}

struct UserList_Previews: PreviewProvider {
    static var previews: some View {
        UserList()
    }
}
