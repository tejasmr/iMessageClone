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
            
            
            
            VStack(alignment: .leading) {
                withAnimation {
                    SideBarView()
                        .rotation3DEffect(
                            .degrees(self.envObj.showingSidebar ? 0 : 90),
                            axis: (x: 0, y: 1, z: 0)
                        )
                        .animation(.default)
                        .offset(x: self.envObj.showingSidebar ? 0 : -UIScreen.main.bounds.width, y: 0)
                    
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
