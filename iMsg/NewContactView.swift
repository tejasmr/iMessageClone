//
//  NewContactView.swift
//  iMsg
//
//  Created by Tejas M R on 25/10/20.
//

import SwiftUI


struct NewContactView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
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
                .frame(width: UIScreen.main.bounds.size.width - 100, height: UIScreen.main.bounds.size.height - 350)
            }
            else {
                VStack {
                    
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
                            self.users.list.append(User(color: usercolor, name: username))
                            self.presentationMode.wrappedValue.dismiss()
                            
                        }) {
                            Image("NewContact")
                                .resizable()
                                .frame(width: 50, height: 50)
                        }
                        
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Image("Cancel")
                                .resizable()
                                .frame(width: 50, height: 50)
                        }
                    }
                }
            }
        }
    }
}



struct NewContactView_Previews: PreviewProvider {
    static var previews: some View {
        NewContactView()
    }
}
