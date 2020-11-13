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
            
            
            
            VStack(alignment: .leading) {
                SideBarView()
            }
            .rotation3DEffect(
                .degrees(self.envObj.showingSidebar ? 0 : 90),
                axis: (x: 0, y: 1, z: 0)
            )
            .animation(.default)
            .offset(x: self.envObj.showingSidebar ? 0 : -UIScreen.main.bounds.width, y: 0)
            
            
        }
        .modifier(NavigationModifier(title: "Groups"))
    }
}

struct Groups_Previews: PreviewProvider {
    static var previews: some View {
        Groups().environmentObject(EnvObj())
    }
}
