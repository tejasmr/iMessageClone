//
//  NewContactNameField.swift
//  iMsg
//
//  Created by Tejas M R on 27/10/20.
//

import SwiftUI

struct NewContactNameField: View {
    @EnvironmentObject var envObj: EnvObj
    
    var body: some View {
        
        HStack {
            Text("Name:")
                .font(.headline)
            
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
