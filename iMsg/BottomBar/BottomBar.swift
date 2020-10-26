//
//  BottomBar.swift
//  iMsg
//
//  Created by Tejas M R on 25/10/20.
//

import SwiftUI

struct BottomBar: View {
    @EnvironmentObject var users: Users
    
    var body: some View {
        VStack(alignment: .trailing) {
            
            HStack(alignment: .bottom, spacing: 0) {
                
                Button(action: {
                        self.users.showingMyProfileView = true
                    
                        self.users.showingGroups = false
                        self.users.showingSidebar = false
                        self.users.showingNewContact = false
                        self.users.showingChats = false
                        self.users.showingSettingsView = false
                }) {
                    
                    if !users.showingNewContact {
                        BottomBarItem(imageName: "ProfilePicPlaceholder", systemName: "", isAsset: true, width: 27)
                    }
                }
//                Rectangle()
//                    .foregroundColor(Color.gray.opacity(0.4))
//                    .frame(width: 1)
//                    .padding(.top, 10)
//
                Button(action: {
                    self.users.showingChats = true
                    
                    self.users.showingGroups = false
                    self.users.showingSidebar = false
                    self.users.showingNewContact = false
                    self.users.showingMyProfileView = false
                    self.users.showingSettingsView = false
                }) {
                    
                    if !users.showingNewContact {
                        BottomBarItem(imageName: "message", systemName: "", isAsset: false, width: 25)
                    }
                }
                
//                Rectangle()
//                    .foregroundColor(Color.gray.opacity(0.4))
//                    .frame(width: 1)
//                    .padding(.top, 10)
                
                Button(action: {
                    self.users.showingNewContact = true
                    
                    self.users.showingGroups = false
                    self.users.showingSidebar = false
                    self.users.showingMyProfileView = false
                    self.users.showingChats = false
                    self.users.showingSettingsView = false
                }) {
                    if !users.showingNewContact {
                        BottomBarItem(imageName: "person.badge.plus", systemName: "", isAsset: false, width: 25)
                    }
                }
//
//                Rectangle()
//                    .foregroundColor(Color.gray.opacity(0.4))
//                    .frame(width: 1)
//                    .padding(.top, 10)
                Button(action: {
                    self.users.showingGroups = true
                    
                    self.users.showingSidebar = false
                    self.users.showingNewContact = false
                    self.users.showingMyProfileView = false
                    self.users.showingChats = false
                    self.users.showingSettingsView = false
                }) {
                    
                    if !users.showingNewContact {
                        BottomBarItem(imageName: "rectangle.stack.person.crop", systemName: "", isAsset: false, width: 25)
                    }
                }
//
//                Rectangle()
//                    .foregroundColor(Color.gray.opacity(0.4))
//                    .frame(width: 1)
//                    .padding(.top, 10)
                
                Button(action: {
                    self.users.showingSettingsView = true
                    
                    self.users.showingGroups = false
                    self.users.showingSidebar = false
                    self.users.showingNewContact = false
                    self.users.showingMyProfileView = false
                    self.users.showingChats = false
                }) {
                    
                    if !users.showingNewContact {
                        BottomBarItem(imageName: "gear", systemName: "", isAsset: false, width: 25)
                    }
                }
                
            }
            .padding(.vertical, 5)
            .frame(width: UIScreen.main.bounds.size.width, height: 60)
        }
        .frame(width: UIScreen.main.bounds.size.width)
    }
}

struct NewContactButton_Previews: PreviewProvider {
    static var previews: some View {
        BottomBar().environmentObject(Users())
    }
}
