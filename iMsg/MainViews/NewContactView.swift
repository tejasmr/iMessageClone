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
            
            // We check whether the showingColorMenu flag is set or not
            
            // If showingColorMenu is set, show the ColorMenu
            if self.envObj.showingColorMenu {
                VStack {
                    ColorMenu()
                }
                .background(Color.white)
                .frame(width: UIScreen.main.bounds.width - 100)
                .frame(maxHeight: 240)
            }
            
            // If showingColorMenu is not set, show the NewContactSubview
            else {
                NewContactSubview()
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



