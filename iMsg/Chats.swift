//
//  Chats.swift
//  iMsg
//
//  Created by Tejas M R on 25/10/20.
//

import SwiftUI

struct Chats: View {
    @State var showingNewContactView = false
    @EnvironmentObject var users: Users
    
    var body: some View {
        ZStack {
            if self.users.showingSidebar {
                VStack(alignment: .leading) {
                    withAnimation {
                        SideBarView()
                    }
                }
            }
            else {
                MainView()
            }
        }
        .navigationBarItems(leading: Button(action: {
            self.users.showingSidebar.toggle()
        }) {
            Image(systemName: "line.horizontal.3")
                .resizable()
                .frame(width: 25, height: 18)
                .foregroundColor(Color.white)
            
        })
        .navigationBarTitle("Chats", displayMode: .inline)
        .background(NavigationConfigurator { nc in
            nc.navigationBar.barTintColor = UIColor(Color.green)
        })
    }
}

struct Chats_Previews: PreviewProvider {
    static var previews: some View {
        Chats()
    }
}
