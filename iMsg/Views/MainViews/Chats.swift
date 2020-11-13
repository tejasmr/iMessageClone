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
            
            
            ChatMainView()
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
        .modifier(NavigationModifier(title: "Chats"))
        
    }
}

struct Chats_Previews: PreviewProvider {
    static var previews: some View {
        Chats().environmentObject(EnvObj())
    }
}
