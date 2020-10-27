//
//  iMsgApp.swift
//  iMsg
//
//  Created by Tejas M R on 19/10/20.
//

import SwiftUI

@main
struct iMsgApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(EnvObj())
        }
    }
}

struct iMsgApp_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(EnvObj())
    }
}
