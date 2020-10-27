//
//  Profile.swift
//  iMsg
//
//  Created by Tejas M R on 26/10/20.
//

import SwiftUI

struct Profile: View {
    @State var title: String = ""
    @EnvironmentObject var envObj: EnvObj
    @State var username: String = ""
    @State var usercolor: Color = Color.blue
    
    var body: some View {
        VStack(spacing: 0) {
            
            VStack {
                if title != "" {
                    Text(title)
                        .font(.headline)
                }
                
                HStack {
                    Text("Name:")
                        .font(.headline)
                    
                    TextField("Enter Name", text: $envObj.you.name)
                        .disableAutocorrection(true)
                        .padding(10)
                        .overlay(RoundedRectangle(cornerRadius: 50)
                                    .stroke(Color.gray, lineWidth: 1)
                                    .shadow(radius: 20))
                }
                .padding(10)
            }
            
            HStack {
                Text("Color:")
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(action: {
                    self.envObj.showingColorMenu.toggle()
                }) {
                    Text("Select Color")
                }
                
                Text(envObj.you.colorName)
                    .padding(10)
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
