//
//  PopListView.swift
//  iMsg
//
//  Created by Tejas M R on 24/10/20.
//

import SwiftUI

struct PopListView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var username: String = ""
    @State var usercolor: Color = Color.gray
    @State var chooseColor: String = "None"
    
    var body: some View {
        
            
        }
    
}

struct PopListView_Previews: PreviewProvider {
    static var previews: some View {
        PopListView()
    }
}
