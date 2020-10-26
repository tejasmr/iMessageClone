//
//  SettingsView.swift
//  iMsg
//
//  Created by Tejas M R on 26/10/20.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var users: Users
    
    var body: some View {
        if self.users.showingSidebar {
            VStack(alignment: .leading) {
                withAnimation {
                    SideBarView()
                }
            }
        }
        else {
            Text("Groups")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().environmentObject(Users())
    }
}
