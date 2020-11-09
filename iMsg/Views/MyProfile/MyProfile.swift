//
//  MyProfile.swift
//  iMsg
//
//  Created by Tejas M R on 26/10/20.
//

import SwiftUI

// Contains UI and functionality for the MyProfileView

struct MyProfile: View {
    @EnvironmentObject var envObj: EnvObj
    @State var username: String = ""
    @State var usercolor: Color = Color.gray
    
    var body: some View {
        VStack(spacing: 0) {
            VStack {
                
                // Goto docs
                Profile()
                    .padding(.top, 10)
            }
            if envObj.showingMyProfileColorMenu {
                VStack {
                    
                    // List of choosable colors
                    ScrollView {
                        
                        // Goto docs
                        ColorMenu(isNewContact: false)
                        
                        // Divider UI
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
        MyProfile().environmentObject(EnvObj())
    }
}
