//
//  SideBarRow.swift
//  iMsg
//
//  Created by Tejas M R on 25/10/20.
//

import SwiftUI

struct SideBarRow: View {
    var image = "person.crop.circle"
    var text = "My Profile"
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Image(systemName: image)
                .resizable()
                .frame(width: 20, height: 20)
            Text(text)
                .font(.headline)
        }
        .padding(10)
    }
}


struct SideBarRow_Previews: PreviewProvider {
    static var previews: some View {
        SideBarRow()
    }
}
