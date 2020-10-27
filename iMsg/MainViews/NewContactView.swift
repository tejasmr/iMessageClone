//
//  NewContactView.swift
//  iMsg
//
//  Created by Tejas M R on 25/10/20.
//

import SwiftUI


struct NewContactView: View {
    @EnvironmentObject var envObj: EnvObj
    
    var body: some View {
        ZStack {
            if self.envObj.showingColorMenu {
                VStack {
                    ColorMenu()
                }
                .background(Color.white)
                .frame(width: UIScreen.main.bounds.width - 100)
                .frame(maxHeight: 240)
            }
            else {
                VStack(spacing: 0) {
                    SmallRoundedRectangleThingy()
                        .padding(.bottom, 5)
                    
                    VStack(spacing: 0) {
                        
                        Text("New Contact")
                            .font(.headline)
                            .padding(.bottom, 10)
                        
                        NewContactNameField()
                        SelectColor()
                            .padding(10)
                        
                        NewContactButtons()
                    }
                }
                .frame(height: 240)
            }
        }
    }
}


struct NewContactView_Previews: PreviewProvider {
    static var previews: some View {
        NewContactView().environmentObject(EnvObj())
    }
}


