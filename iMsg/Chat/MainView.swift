//
//  MainView.swift
//  iMsg
//
//  Created by Tejas M R on 25/10/20.
//

import SwiftUI

struct MainView: View {
    @State var showingNewContact = false
    @State var showingSidebar = false
    @EnvironmentObject var envObj: EnvObj
    
    var body: some View {
        VStack {
            UserList()
        }
        .navigationBarItems(leading: Button(action: {
            self.envObj.showingSidebar.toggle()
        }) {
            Image(systemName: "line.horizontal.3")
                .resizable()
                .frame(width: 25, height: 18)
                .foregroundColor(Color.white)
        })
        .navigationBarTitle("Chats", displayMode: .inline)
        .background(NavigationConfigurator { nc in
            nc.navigationBar.barTintColor = UIColor(Color.black)
            nc.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        })
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(EnvObj())
    }
}

