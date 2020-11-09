//
//  SmallRoundedRectangleThingy.swift
//  iMsg
//
//  Created by Tejas M R on 27/10/20.
//

import SwiftUI

// The small rounded rectangular thingy UI designers use

struct SmallRoundedRectangleThingy: View {
    var body: some View {
        Rectangle()
            .frame(width: 60, height: 6)
            .opacity(0.4)
            .cornerRadius(5)
            .padding(.bottom, 8)
    }
}

struct SmallRoundedRectangleThingy_Previews: PreviewProvider {
    static var previews: some View {
        SmallRoundedRectangleThingy()
    }
}
