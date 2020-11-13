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
    @State var title: String = "No Title"
    
    func body(content: Content) -> some View {
        content
            
            // Sidebar Icon and toggle the showingSidebar flag in the envObj
            .navigationBarItems(leading: SideBarToggleButton())
            
            // Title of the main view
            .navigationBarTitle(title, displayMode: .inline)
            
            // Configure the background and foregroundColor of the Navigation bar of the main view
            .background(NavigationConfigurator { nc in
                nc.navigationBar.barTintColor = UIColor(Color.white)
                nc.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
            })
    }
}
