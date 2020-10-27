//
//  NewContactNameField.swift
//  iMsg
//
//  Created by Tejas M R on 27/10/20.
//

import SwiftUI

// A Horizontal Row of a "Name:" label and a TextField "Enter Name" which takes the input fromt he user and puts it into newContact.userName

struct NewContactNameField: View {
    @EnvironmentObject var envObj: EnvObj
    
    var body: some View {
        HStack {
            
            // Label UI
            Text("Name:")
                .font(.headline)
            
            // TextField which uses the userName in newContact to get the Name of the new contact
            TextField("Enter Name", text: $envObj.newContact.userName)
                .disableAutocorrection(true)
                .padding(10)
                .overlay(RoundedRectangle(cornerRadius: 50)
                            .stroke(Color.gray, lineWidth: 1)
                            .shadow(radius: 20))
        }
        .padding(10)
        
    }
}

struct NewContactNameField_Previews: PreviewProvider {
    static var previews: some View {
        NewContactNameField().environmentObject(EnvObj())
    }
}
