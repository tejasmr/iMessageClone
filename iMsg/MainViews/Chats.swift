//
//  Chats.swift
//  iMsg
//
//  Created by Tejas M R on 25/10/20.
//

import SwiftUI

struct Chats: View {
    @State var showingNewContactView = false
    @EnvironmentObject var envObj: EnvObj
    
    var body: some View {
        ZStack {
            if self.envObj.showingSidebar {
                VStack(alignment: .leading) {
                    withAnimation {
                        SideBarView()
                    }
                }
            }
            else {
                MainView()
            }
        }
        .modifier(NavigationModifier())
    }
}

struct Chats_Previews: PreviewProvider {
    static var previews: some View {
        Chats().environmentObject(EnvObj())
    }
}
