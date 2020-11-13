//
//  SideBarView.swift
//  iMsg
//
//  Created by Tejas M R on 25/10/20.
//

import SwiftUI


// 4 rows, one for MyProfileView, one for Chats, one for Groups and one for SettingsView

// Each Icon is a button in which all the flags except the flag which represents that View is set to false. Only the flag that represents the View is set to true

// We use the SideBarRow for UI of each Row


struct SideBarView: View {
    @EnvironmentObject var envObj: EnvObj
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 10) {
                
                Button(
                    action: {
                        self.envObj.showingMyProfileView = true
                    
                        self.envObj.showingGroups = false
                        self.envObj.showingSidebar = false
                        self.envObj.showingNewContact = false
                        self.envObj.showingChats = false
                        self.envObj.showingSettingsView = false
                    }) {
                    SideBarRow(image: "person.crop.circle", text: "My Profile")
                }
                
                
                Button(
                    action: {
                        self.envObj.showingChats = true
                        
                        self.envObj.showingGroups = false
                        self.envObj.showingSidebar = false
                        self.envObj.showingNewContact = false
                        self.envObj.showingMyProfileView = false
                        self.envObj.showingSettingsView = false
                    }
                ) {
                    SideBarRow(image: "message", text: "Chats")
                }
                
                Button(
                    action: {
                        self.envObj.showingGroups = true
                        
                        self.envObj.showingSidebar = false
                        self.envObj.showingNewContact = false
                        self.envObj.showingMyProfileView = false
                        self.envObj.showingChats = false
                        self.envObj.showingSettingsView = false
                    }
                ) {
                    SideBarRow(image: "rectangle.stack.person.crop", text: "Groups")
                }
                
                Button(
                    action: {
                        self.envObj.showingSettingsView = true
                        
                        self.envObj.showingGroups = false
                        self.envObj.showingSidebar = false
                        self.envObj.showingNewContact = false
                        self.envObj.showingMyProfileView = false
                        self.envObj.showingChats = false
                    }
                ) {
                    SideBarRow(image: "gear", text: "Settings")
                }
                
                Spacer()
            }
            .padding(.top, 30)
            .frame(width: UIScreen.main.bounds.size.width - 100, alignment: .center)
            .background(Color.white)
            .cornerRadius(30, corners: [.topRight, .bottomRight])
            .shadow(radius: 20)
            
            
        }
        .padding(.trailing, 100)
    }
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView().environmentObject(EnvObj())
    }
}
