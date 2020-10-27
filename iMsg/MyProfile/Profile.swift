//
//  Profile.swift
//  iMsg
//
//  Created by Tejas M R on 26/10/20.
//

import SwiftUI

struct Profile: View {
    @State var title: String = ""
    @EnvironmentObject var users: Users
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
                    
                    TextField("Enter Name", text: $users.you.name)
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
                    self.users.showingColorMenu.toggle()
                }) {
                    Text("Select Color")
                }
                
                Text(users.you.colorName)
                    .padding(10)
                Spacer()
            }
            .padding(10)
        }
    }
}

struct ColorMenu_Previews: PreviewProvider {
    static var previews: some View {
        Profile().environmentObject(Users())
    }
}
