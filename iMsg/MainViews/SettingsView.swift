//
//  SettingsView.swift
//  iMsg
//
//  Created by Tejas M R on 26/10/20.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var envObj: EnvObj
    
    var body: some View {
        VStack {
            if self.envObj.showingSidebar {
                VStack(alignment: .leading) {
                    withAnimation {
                        SideBarView()
                    }
                }
            }
            else {
                VStack {
                    Spacer()
                    Text("Settings View")
                    Spacer()
                }
            }
        }
        .modifier(NavigationModifier())
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().environmentObject(EnvObj())
    }
}
