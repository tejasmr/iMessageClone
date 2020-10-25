//
//  NewContactFormView.swift
//  iMsg
//
//  Created by Tejas M R on 24/10/20.
//

import SwiftUI

struct NewContactFormView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var username: String = ""
    @State var usercolor: Color = Color.gray
    @State var showColorMenu = false
    @State var chooseColor: String = "None"
    
    var body: some View {
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
        .padding(10)
        
    }
}

struct NewContactFormView_Previews: PreviewProvider {
    static var previews: some View {
        NewContactFormView()
    }
}
