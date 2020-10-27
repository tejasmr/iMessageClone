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
                    Text("Groups")
                    Spacer()
                }
            }
        }
        .modifier(NavigationModifier())
    }
}

struct Groups_Previews: PreviewProvider {
    static var previews: some View {
        Groups().environmentObject(EnvObj())
    }
}
