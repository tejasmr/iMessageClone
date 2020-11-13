//
//  MyProfileView.swift
//  iMsg
//
//  Created by Tejas M R on 25/10/20.
//

import SwiftUI

struct MyProfileView: View {
    @EnvironmentObject var envObj: EnvObj
    
    var body: some View {
        ZStack {
            
            
            VStack {
                MyProfile()
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
        .modifier(NavigationModifier(title: "My Profile"))
    }
}

struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView().environmentObject(EnvObj())
    }
}
