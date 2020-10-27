//
//  SelectColor.swift
//  iMsg
//
//  Created by Tejas M R on 27/10/20.
//

import SwiftUI


struct SelectColor: View {
    @EnvironmentObject var envObj: EnvObj
    
    var body: some View {
        HStack {
            Text("Color:")
                .fontWeight(.bold)
            
            Spacer()
            
            Button(action: {
                self.envObj.showingColorMenu.toggle()
            }) {
                Text("Select Color")
            }
            
            Text(self.envObj.newContact.userColorName)
                .padding(10)
            Spacer()
        }
    }
}


struct SelectColor_Previews: PreviewProvider {
    static var previews: some View {
        SelectColor().environmentObject(EnvObj())
    }
}
