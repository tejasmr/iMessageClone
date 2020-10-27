//
//  NewContactButtons.swift
//  iMsg
//
//  Created by Tejas M R on 27/10/20.
//

import SwiftUI

struct NewContactButtons: View {
    @EnvironmentObject var envObj: EnvObj
    
    var body: some View {
        HStack(spacing: 0) {
            Button(action: {
                if self.envObj.newContact.userName != "" {
                    self.envObj.users.append(User(color: self.envObj.newContact.userColor, name: self.envObj.newContact.userName))
                    self.envObj.showingNewContact.toggle()
                    self.envObj.newContact = NewContactEnvObj(userColor: Color.blue, userName: "", userColorName: "Blue")
                    
                }
                
            }) {
                Image("NewContact")
                    .resizable()
                    .frame(width: 50, height: 50)
            }
            
            Button(action: {
                self.envObj.showingNewContact.toggle()
            }) {
                Image("Cancel")
                    .resizable()
                    .frame(width: 50, height: 50)
            }
        }
    }
}

struct NewContactButtons_Previews: PreviewProvider {
    static var previews: some View {
        NewContactButtons().environmentObject(EnvObj())
    }
}
