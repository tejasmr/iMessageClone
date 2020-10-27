//
//  MyProfile.swift
//  iMsg
//
//  Created by Tejas M R on 26/10/20.
//

import SwiftUI

struct MyProfile: View {
    @EnvironmentObject var users: Users
    @State var username: String = ""
    @State var usercolor: Color = Color.gray
    
    var body: some View {
        VStack(spacing: 0) {
            VStack {
                Profile()
                    .padding(.top, 10)
            }
            if users.showingColorMenu {
                VStack {
                    ScrollView {
                        ForEach(chatColors, id: \.self) { chatColor in
                            VStack(alignment: .center, spacing: 0) {
                                Divider()
                                    .padding(.horizontal, 20)
                                
                                Button(action: {
                                    users.you.color = chatColor.color
                                    users.you.colorName = chatColor.colorName
                                    self.users.showingColorMenu.toggle()
                                }) {
                                    Text(chatColor.colorName)
                                        .padding(.top, 10)
                                        .frame(width: UIScreen.main.bounds.size.width - 100)
                                }
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
        }
    }
}

struct MyProfile_Previews: PreviewProvider {
    static var previews: some View {
        MyProfile().environmentObject(Users())
    }
}
