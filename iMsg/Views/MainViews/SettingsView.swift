//
//  SettingsView.swift
//  iMsg
//
//  Created by Tejas M R on 26/10/20.
//

import SwiftUI

// Main View for representing the UI and functionality of the Settings of our application

struct SettingsView: View {
    @EnvironmentObject var envObj: EnvObj
    
    var body: some View {
        ZStack {
            
            VStack {
                Spacer()
                Text("Settings View And Stuffs Placeholder")
                Spacer()
            }
            .allowsHitTesting(envObj.showingNewContact ? false : true)

            
            // We check whether the showingSideBar flag is set or not
            
            // If showingSidebar is set, show the Sidebar
            
            if self.envObj.showingSidebar {
                VStack(alignment: .leading) {
                    withAnimation {
                        SideBarView()
                    }
                }
            }
        }
        .modifier(NavigationModifier(title: "Settings"))
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().environmentObject(EnvObj())
    }
}
