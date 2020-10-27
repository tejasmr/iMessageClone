//
//  Profile.swift
//  iMsg
//
//  Created by Tejas M R on 26/10/20.
//

import SwiftUI

// Contains Label "Name:" and a Text Field to enter the userName, Label "Color:" and a button to toggle ColorMenu and a Label which shows which color is chosen

struct Profile: View {
    @State var title: String = ""
    @EnvironmentObject var envObj: EnvObj
    
    var body: some View {
        VStack(spacing: 0) {
        
            // Horizontal Row of Label and TextField
            HStack {
                
                // Label UI
                Text("Name:")
                    .font(.headline)
                
                // TextField which uses the name in you object to set the Name of the User
                TextField("Enter Name", text: $envObj.you.name)
                    .disableAutocorrection(true)
                    .padding(10)
                    .overlay(RoundedRectangle(cornerRadius: 50)
                                .stroke(Color.gray, lineWidth: 1)
                                .shadow(radius: 20))
            }
            .padding(10)
        
            HStack {
                
                // Label UI
                Text("Color:")
                    .fontWeight(.bold)
                
                // Spacer UI
                Spacer()
                
                // Button to toggle the ColorMenu
                Button(action: {
                    self.envObj.showingColorMenu.toggle()
                }) {
                    Text("Select Color")
                }
                
                // Label which shows the selected color
                Text(self.envObj.you.colorName)
                    .padding(10)
                
                // Spacer UI
                Spacer()
            }
            .padding(10)
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile().environmentObject(EnvObj())
    }
}
