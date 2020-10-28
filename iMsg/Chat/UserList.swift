//
//  UserList.swift
//  iMsg
//
//  Created by Tejas M R on 25/10/20.
//

import SwiftUI

// This View shows the scrollable list of Users/Conatacts the user is in contact with

// This has some UI and it leads to the ChatRoomView for each User/Contact

struct UserList: View {
    @EnvironmentObject var envObj: EnvObj
    
    var body: some View {
        ScrollView {
            ForEach(envObj.users, id: \.self) { user in
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
        UserList().environmentObject(EnvObj())
    }
}
