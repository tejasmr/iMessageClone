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
        .navigationBarItems(leading: Button(action: {
            self.envObj.showingSidebar.toggle()
        }) {
            Image(systemName: "line.horizontal.3")
                .resizable()
                .frame(width: 25, height: 18)
                .foregroundColor(Color.white)
        })
        .navigationBarTitle("My Profile", displayMode: .inline)
        .background(NavigationConfigurator { nc in
            nc.navigationBar.barTintColor = UIColor(Color.black)
            nc.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        })
    }
}

struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView().environmentObject(EnvObj())
    }
}
