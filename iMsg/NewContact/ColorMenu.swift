//
//  ColorMenu.swift
//  iMsg
//
//  Created by Tejas M R on 27/10/20.
//

import SwiftUI

struct ColorMenu: View {
    
    @EnvironmentObject var envObj: EnvObj
    
    var body: some View {
        ScrollView {
            ForEach(chatColors, id: \.self) { chatColor in
                Divider()
                    .padding(.horizontal, 20)
                
                Button(action: {
                    self.envObj.newContact.userColor = chatColor.color
                    self.envObj.newContact.userColorName = chatColor.colorName
                    self.envObj.showingColorMenu.toggle()
                }) {
                    Text(chatColor.colorName)
                }
                
            }
            Divider()
                .padding(.horizontal, 20)
        }
    }
}

struct ColorMenu_Previews: PreviewProvider {
    static var previews: some View {
        ColorMenu().environmentObject(EnvObj())
    }
}
