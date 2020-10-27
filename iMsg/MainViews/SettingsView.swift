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
        .navigationBarItems(leading: Button(action: {
            self.envObj.showingSidebar.toggle()
        }) {
            Image(systemName: "line.horizontal.3")
                .resizable()
                .frame(width: 25, height: 18)
                .foregroundColor(Color.white)
        })
        .navigationBarTitle("Settings", displayMode: .inline)
        .background(NavigationConfigurator { nc in
            nc.navigationBar.barTintColor = UIColor(Color.black)
            nc.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        })
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().environmentObject(EnvObj())
    }
}
