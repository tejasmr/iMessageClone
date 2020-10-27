//
//  NavigationModifier.swift
//  iMsg
//
//  Created by Tejas M R on 27/10/20.
//

import SwiftUI

struct NavigationModifier: ViewModifier {
    @EnvironmentObject var envObj: EnvObj
    
    func body(content: Content) -> some View {
        content
            .navigationBarItems(leading: Button(action: {
                self.envObj.showingSidebar.toggle()
            }) {
                Image(systemName: "line.horizontal.3")
                    .resizable()
                    .frame(width: 25, height: 18)
                    .foregroundColor(Color.white)
            })
            .navigationBarTitle("Settings", displayMode: .inline)
            .background(NavigationConfigurator { nc in
                nc.navigationBar.barTintColor = UIColor(Color.black)
                nc.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
            })
    }
}
