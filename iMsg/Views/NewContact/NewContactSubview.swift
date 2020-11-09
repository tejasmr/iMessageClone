//
//  NewContactSubview.swift
//  iMsg
//
//  Created by Tejas M R on 27/10/20.
//

import SwiftUI

// UI and Functionality for the user to enter an new contact

struct NewContactSubview: View {
    var body: some View {
        VStack(spacing: 0) {
            
            // Goto docs
            SmallRoundedRectangleThingy()
                .padding(.bottom, 5)
            
            VStack(spacing: 0) {
                
                // Label UI
                Text("New Contact")
                    .font(.headline)
                    .padding(.bottom, 10)
                
                // Goto docs
                NewContactNameField()
                
                // Goto docs
                SelectColor()
                    .padding(10)
                
                // Goto docs
                NewContactButtons()
            }
        }
    }
}

struct NewContactSubview_Previews: PreviewProvider {
    static var previews: some View {
        NewContactSubview()
    }
}
