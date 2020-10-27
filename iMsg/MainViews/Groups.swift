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
        .navigationBarItems(leading: Button(action: {
            self.envObj.showingSidebar.toggle()
        }) {
            Image(systemName: "line.horizontal.3")
                .resizable()
                .frame(width: 25, height: 18)
                .foregroundColor(Color.white)
        })
        .navigationBarTitle("Groups", displayMode: .inline)
        .background(NavigationConfigurator { nc in
            nc.navigationBar.barTintColor = UIColor(Color.black)
            nc.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        })
    }
}

struct Groups_Previews: PreviewProvider {
    static var previews: some View {
        Groups().environmentObject(EnvObj())
    }
}
