//
//  BottomBar.swift
//  iMsg
//
//  Created by Tejas M R on 25/10/20.
//

import SwiftUI

struct BottomBar: View {
    @EnvironmentObject var envObj: EnvObj
    
    var body: some View {
        VStack(alignment: .trailing) {
            
            HStack(alignment: .bottom, spacing: 0) {
                
                Button(action: {
                        self.envObj.showingMyProfileView = true
                    
                        self.envObj.showingGroups = false
                        self.envObj.showingSidebar = false
                        self.envObj.showingNewContact = false
                        self.envObj.showingChats = false
                        self.envObj.showingSettingsView = false
                }) {
                    
                    if !envObj.showingNewContact {
                        BottomBarItem(imageName: "ProfilePicPlaceholder", systemName: "", isAsset: true, width: 27)
                    }
                }
//                Rectangle()
//                    .foregroundColor(Color.gray.opacity(0.4))
//                    .frame(width: 1)
//                    .padding(.top, 10)
//
                Button(action: {
                    self.envObj.showingChats = true
                    
                    self.envObj.showingGroups = false
                    self.envObj.showingSidebar = false
                    self.envObj.showingNewContact = false
                    self.envObj.showingMyProfileView = false
                    self.envObj.showingSettingsView = false
                }) {
                    
                    if !envObj.showingNewContact {
                        BottomBarItem(imageName: "message", systemName: "", isAsset: false, width: 25)
                    }
                }
                
//                Rectangle()
//                    .foregroundColor(Color.gray.opacity(0.4))
//                    .frame(width: 1)
//                    .padding(.top, 10)
                
                Button(action: {
                    self.envObj.showingNewContact = true
                }) {
                    if !envObj.showingNewContact {
                        BottomBarItem(imageName: "person.badge.plus", systemName: "", isAsset: false, width: 25)
                    }
                }
//
//                Rectangle()
//                    .foregroundColor(Color.gray.opacity(0.4))
//                    .frame(width: 1)
//                    .padding(.top, 10)
                Button(action: {
                    self.envObj.showingGroups = true
                    
                    self.envObj.showingSidebar = false
                    self.envObj.showingNewContact = false
                    self.envObj.showingMyProfileView = false
                    self.envObj.showingChats = false
                    self.envObj.showingSettingsView = false
                }) {
                    
                    if !envObj.showingNewContact {
                        BottomBarItem(imageName: "rectangle.stack.person.crop", systemName: "", isAsset: false, width: 25)
                    }
                }
//
//                Rectangle()
//                    .foregroundColor(Color.gray.opacity(0.4))
//                    .frame(width: 1)
//                    .padding(.top, 10)
                
                Button(action: {
                    self.envObj.showingSettingsView = true
                    
                    self.envObj.showingGroups = false
                    self.envObj.showingSidebar = false
                    self.envObj.showingNewContact = false
                    self.envObj.showingMyProfileView = false
                    self.envObj.showingChats = false
                }) {
                    
                    if !envObj.showingNewContact {
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
        BottomBar().environmentObject(EnvObj())
    }
}
