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
        VStack {
            
            // We check whether the showingSideBar flag is set or not
            
            // If showingSidebar is set, show the Sidebar
            
            if self.envObj.showingSidebar {
                VStack(alignment: .leading) {
                    withAnimation {
                        SideBarView()
                    }
                }
            }
            
            // Else we show the Settings View
            else {
                VStack {
                    Spacer()
                    Text("Settings View")
                    Spacer()
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
