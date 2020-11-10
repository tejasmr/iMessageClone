//
//  Groups.swift
//  iMsg
//
//  Created by Tejas M R on 25/10/20.
//

import SwiftUI

struct Groups: View {
    @EnvironmentObject var envObj: EnvObj
    
    var body: some View {
        ZStack {
            
            VStack {
                Spacer()
                Text("Groups")
                Spacer()
            }
            
            
            // We check whether the showingSideBar flag is set or not
            
            // If showingSidebar is set, show the Sidebar
            if self.envObj.showingSidebar {
                VStack(alignment: .leading) {
                    SideBarView()
                        .animation(.easeInOut(duration: 200))
                }
            }
            
            
        }
        .modifier(NavigationModifier(title: "Groups"))
    }
}

struct Groups_Previews: PreviewProvider {
    static var previews: some View {
        Groups().environmentObject(EnvObj())
    }
}
