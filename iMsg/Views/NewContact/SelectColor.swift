//
//  SelectColor.swift
//  iMsg
//
//  Created by Tejas M R on 27/10/20.
//

import SwiftUI

// A Horizontal Row of a "Color:" label, a button "Select Color" which toggles the showingColorMenu flag and a label which refreshed to the selected labels

struct SelectColor: View {
    @EnvironmentObject var envObj: EnvObj
    
    var body: some View {
        HStack {
            
            // Label UI
            Text("Color:")
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            // Spacer UI
            Spacer()
            
            // Button to toggle showingColorMenu flag in the envObj
            Button(action: {
                self.envObj.showingNewContactColorMenu.toggle()
            }) {
                Text("Select Color")
                    .foregroundColor(.white)
                    .padding(8)
                    .background(Color.black)
                    .cornerRadius(10)
            }
            
            // Label which shows the selected color
            Text(self.envObj.newContact.userColorName)
                .padding(10)
                .foregroundColor(.white)
            
            // Spacer UI
            Spacer()
        }
    }
}


struct SelectColor_Previews: PreviewProvider {
    static var previews: some View {
        SelectColor().environmentObject(EnvObj())
    }
}
