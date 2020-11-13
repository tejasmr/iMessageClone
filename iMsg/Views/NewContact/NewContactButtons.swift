//
//  NewContactButtons.swift
//  iMsg
//
//  Created by Tejas M R on 27/10/20.
//

import SwiftUI

// Contains UI and functionality for add NewContact button and close Cancel button

struct NewContactButtons: View {
    @EnvironmentObject var envObj: EnvObj
    
    var body: some View {
        HStack(spacing: 0) {
            
            // To add the NewContact to the list of users in envObj
            Button(action: {
                
                // Only if the entered Name: is not empty string
                if self.envObj.newContact.userName != "" {
                    
                    // Append the Color and Name entered by the user to the list of users
                    self.envObj.users.append(User(color: self.envObj.newContact.userColor, name: self.envObj.newContact.userName))
                    
                    // Flag to check it is showing the NewContactView or not
                    self.envObj.showingNewContact.toggle()
                    
                    // Reassign the newContact to the default value to prepare for the next add new contact
                    self.envObj.newContact = NewContactEnvObj(userColor: Color.blue, userName: "", userColorName: "Blue")
                    
                }
                
            }) {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .clipShape(Circle())
            }
            .padding(.horizontal, 2)
            .shadow(color: .gray, radius: 2, x: 0, y: 0)
            
            // To add the Go to the parent view without doing anything by toggling the showingNewContact flag
            Button(action: {
                
                // Flag to check it is showing the NewContactView or not
                self.envObj.showingNewContact.toggle()
            }) {
                Image(systemName: "xmark.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color.white)
                    .background(Color.red)
                    .clipShape(Circle())
            }
            .padding(.horizontal, 2)
            .shadow(color: .gray, radius: 2, x: 0, y: 0)
        }
    }
}

struct NewContactButtons_Previews: PreviewProvider {
    static var previews: some View {
        NewContactButtons().environmentObject(EnvObj())
    }
}
