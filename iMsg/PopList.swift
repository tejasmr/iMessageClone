//
//  PopList.swift
//  iMsg
//
//  Created by Tejas M R on 24/10/20.
//

import SwiftUI

struct PopList: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var username: String = ""
    @State var usercolor: Color = Color.gray
    @State var chooseColor: String = "None"
    
    var body: some View {
        ZStack {
            Color.black
            PopListView()
        }
    }
}

struct PopList_Previews: PreviewProvider {
    static var previews: some View {
        PopList()
    }
}
