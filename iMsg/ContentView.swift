//
//  ContentView.swift
//  iMsg
//
//  Created by Tejas M R on 19/10/20
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State var showingNewContactView = false
    @EnvironmentObject var envObj: EnvObj
    
    var body: some View {
        NavigationView {
            ZStack() {
                VStack {
                    if self.envObj.showingMyProfileView {
                        VStack(alignment: .leading) {
                            withAnimation {
                                MyProfileView()
                            }
                        }
                    }
                    else if self.envObj.showingChats {
                        VStack(alignment: .leading) {
                            withAnimation {
                                Chats()
                            }
                        }
                    }
                    else if self.envObj.showingGroups {
                        VStack(alignment: .leading) {
                            withAnimation {
                                Groups()
                            }
                        }
                    }
                    else if self.envObj.showingSettingsView {
                        VStack(alignment: .leading) {
                            withAnimation {
                                SettingsView()
                            }
                        }
                    }
                    else {
                        VStack(alignment: .leading) {
                            withAnimation {
                                Chats()
                            }
                        }
                    }
                }
                .padding(.bottom, 60)
                .blur(radius: (envObj.showingNewContact ? 2 : 0))
                .allowsHitTesting(envObj.showingNewContact ? false : true)
                
                VStack {
                    if envObj.showingNewContact {
                        Spacer()
                        HalfModalView(isShown: $envObj.showingNewContact) {
                            NewContactView()
                        }
                    }
                    else {
                        Spacer()
                        BottomBar()
                    }
                }
            }
        }
        .accentColor(.white)
        .environmentObject(envObj)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(EnvObj())
    }
}
