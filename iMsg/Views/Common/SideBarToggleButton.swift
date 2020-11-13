//
//  SideBarToggleButton.swift
//  iMsg
//
//  Created by Tejas M R on 11/11/20.
//

import SwiftUI

struct SideBarToggleButton: View {
    
    @EnvironmentObject var envObj: EnvObj
    
    var body: some View {
        
        VStack {
            Button(action: {
                self.envObj.showingSidebar.toggle()
            }) {
            Image(systemName: "line.horizontal.3")
                .resizable()
                .frame(width: 20, height: 15)
                .padding(.trailing, 15)
                .padding(.vertical, 10)
                .foregroundColor(Color.blue)
                .background(Color.white)
                .cornerRadius(20, corners: [.topRight, .bottomRight])
                .shadow(color: .blue, radius: 1, x: 1.4, y: 0)
            }
        }
    }
}

struct SideBarToggleButton_Previews: PreviewProvider {
    static var previews: some View {
        SideBarToggleButton()
    }
}
