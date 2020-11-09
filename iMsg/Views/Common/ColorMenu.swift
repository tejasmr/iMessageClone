//
//  ColorMenu.swift
//  iMsg
//
//  Created by Tejas M R on 27/10/20.
//

import SwiftUI

// To represent the menu of colors

struct ColorMenu: View {
    
    @EnvironmentObject var envObj: EnvObj
    @State var isNewContact: Bool
    
    var body: some View {
        
        // We use ScrollView to represent the list of colors choosable
        ScrollView {
            
            // Iterate through the list of ChatColor - chatColors
            ForEach(chatColors, id: \.self) { chatColor in
                
                // Divider UI
                Divider()
                    .padding(.horizontal, 20)
                
                // Show the colorName of the chatColor on the screen
                Button(action: {
                    
                    if isNewContact {
                        // Set the userColor and userColorName of the newContact object of envObj to the selected color
                        self.envObj.newContact.userColor = chatColor.color
                        self.envObj.newContact.userColorName = chatColor.colorName
                    }
                    else {
                        // Set the color and colorName of the you object in envObj
                        self.envObj.you.color = chatColor.color
                        self.envObj.you.colorName = chatColor.colorName
                    }
                    
                    // Toggle the showingColorMenu when this button is pressed
                    self.envObj.showingColorMenu.toggle()
                }) {
                    Text(chatColor.colorName)
                        .foregroundColor(.blue)
                        .padding(.top, 10)
                        .frame(width: UIScreen.main.bounds.size.width - 100)
                }
                
            }
            Divider()
                .padding(.horizontal, 20)
        }
    }
}

struct ColorMenu_Previews: PreviewProvider {
    static var previews: some View {
        ColorMenu(isNewContact: true).environmentObject(EnvObj())
    }
}
