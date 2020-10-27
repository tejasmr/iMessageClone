//
//  NewContactView.swift
//  iMsg
//
//  Created by Tejas M R on 25/10/20.
//

import SwiftUI


struct NewContactView: View {
    @State var username: String = ""
    @State var usercolor: Color = Color.gray
    @State var showColorMenu = false
    @State var chooseColor: String = "None"
    @EnvironmentObject var users: Users
    
    var body: some View {
        ZStack {
            
            if showColorMenu {
                VStack {
                    ScrollView {
                        ForEach(chatColors, id: \.self) { chatColor in
                            Divider()
                                .padding(.horizontal, 20)
                            
                            Button(action: {
                                usercolor = chatColor.color
                                chooseColor = chatColor.colorName
                                self.showColorMenu.toggle()
                            }) {
                                Text(chatColor.colorName)
                            }
                            
                        }
                        Divider()
                            .padding(.horizontal, 20)
                    }
                }
                .background(Color.white)
                .frame(width: UIScreen.main.bounds.width - 100)
                .frame(maxHeight: 240)
            }
            else {
                
                VStack(spacing: 0) {
                    Rectangle()
                        .frame(width: 60, height: 6)
                        .opacity(0.4)
                        .cornerRadius(5)
                        .padding(.bottom, 8)
                    VStack(spacing: 0) {
                        VStack {
                            
                            Text("New Contact")
                                .font(.headline)
                            
                            
                            HStack {
                                Text("Name:")
                                    .font(.headline)
                                
                                TextField("Enter Name", text: $username)
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
                                self.showColorMenu.toggle()
                            }) {
                                Text("Select Color")
                            }
                            
                            Text(chooseColor)
                                .padding(10)
                            Spacer()
                        }
                        .padding(10)
                        
                        HStack(spacing: 0) {
                            Button(action: {
                                if username != "" {
                                    self.users.list.append(User(color: usercolor, name: username))
                                    self.users.showingNewContact.toggle()
                                }
                                
                            }) {
                                Image("NewContact")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                            }
                            
                            Button(action: {
                                self.users.showingNewContact.toggle()
                            }) {
                                Image("Cancel")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                            }
                        }
                        
                    }
                }
                .frame(height: 240)
            }
        }
    }
}


struct NewContactView_Previews: PreviewProvider {
    static var previews: some View {
        NewContactView()
    }
}


