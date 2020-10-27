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
            if self.envObj.showingSidebar {
                VStack(alignment: .leading) {
                    withAnimation {
                        SideBarView()
                    }
                }
            }
            else {
                VStack {
                    MyProfile()
                    Spacer()
                }
            }
        }
        .modifier(NavigationModifier())
    }
}

struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView().environmentObject(EnvObj())
    }
}
