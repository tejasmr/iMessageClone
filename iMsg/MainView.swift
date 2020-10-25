//
//  MainView.swift
//  iMsg
//
//  Created by Tejas M R on 25/10/20.
//

import SwiftUI

struct MainView: View {
    @State var showingNewContact = false
    @State var showingSidebar = false
    @EnvironmentObject var users: Users
    
    var body: some View {
        VStack {
            UserList()
            NewContactButton()
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

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(Users())
    }
}

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

struct NewContactButton: View {
    @EnvironmentObject var users: Users
    
    var body: some View {
        VStack(alignment: .trailing) {
            
            HStack(alignment: .center) {
                Button(action: {
                    self.users.showingNewContact.toggle()
                }) {
                    
                    if !users.showingNewContact {
                        Image(systemName: "person.badge.plus")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .padding(20)
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .clipShape(Circle())
                            .padding(10)
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.size.width)
            if users.showingNewContact {
                HalfModalView(isShown: $users.showingNewContact) {
                    NewContactView()
                }
                
            }
        }
        .frame(width: UIScreen.main.bounds.size.width)
    }
}
