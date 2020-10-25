//
//  NewContactButton.swift
//  iMsg
//
//  Created by Tejas M R on 25/10/20.
//

import SwiftUI

struct NewContactButton: View {
    @EnvironmentObject var users: Users
    
    var body: some View {
        VStack(alignment: .trailing) {
            
            HStack(alignment: .center) {
                Button(action: {
                    self.users.showingNewContact.toggle()
                }) {
                    
                    if !users.showingNewContact {
                        Image(systemName: "person.badge.plus")
                            .resizable()
                            .frame(width: 35, height: 35)
                            .padding(20)
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .clipShape(Circle())
                            .padding(10)
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.size.width)
            if users.showingNewContact {
                HalfModalView(isShown: $users.showingNewContact) {
                    NewContactView()
                }
                
            }
        }
        .frame(width: UIScreen.main.bounds.size.width)
    }
}

struct NewContactButton_Previews: PreviewProvider {
    static var previews: some View {
        NewContactButton()
    }
}
