//
//  NavigationModifier.swift
//  iMsg
//
//  Created by Tejas M R on 27/10/20.
//

import SwiftUI

// This is used to modify the main views to have a sidebar and a navigation bar title, bar tint color and the foregroundColor of the title

struct NavigationModifier: ViewModifier {
    @EnvironmentObject var envObj: EnvObj
    
    func body(content: Content) -> some View {
        content
            
            // Sidebar Icon and toggle the showingSidebar flag in the envObj
            .navigationBarItems(leading: Button(action: {
                self.envObj.showingSidebar.toggle()
            }) {
                Image(systemName: "line.horizontal.3")
                    .resizable()
                    .frame(width: 25, height: 18)
                    .foregroundColor(Color.white)
            })
            
            // Title of the main view
            .navigationBarTitle("Settings", displayMode: .inline)
            
            // Configure the background and foregroundColor of the Navigation bar of the main view
            .background(NavigationConfigurator { nc in
                nc.navigationBar.barTintColor = UIColor(Color.black)
                nc.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
            })
    }
}
