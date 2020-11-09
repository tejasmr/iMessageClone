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
            
            // Else we show the MyProfile View
            else {
                VStack {
                    MyProfile()
                    Spacer()
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
