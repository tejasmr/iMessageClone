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
    @EnvironmentObject var users: Users
    
    var body: some View {
        NavigationView {
            if self.users.showingMyProfileView {
                VStack(alignment: .leading) {
                    withAnimation {
                        MyProfileView()
                    }
                }
            }
            else if self.users.showingChats {
                VStack(alignment: .leading) {
                    withAnimation {
                        Chats()
                    }
                }
            }
            else if self.users.showingGroups {
                VStack(alignment: .leading) {
                    withAnimation {
                        Groups()
                    }
                }
            }
            else {
                Chats()
            }
        }.environmentObject(users)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Users())
    }
}

//For Custom Navigation Bar Color

struct NavigationConfigurator: UIViewControllerRepresentable {
    var configure: (UINavigationController) -> Void = { _ in }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
        UIViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
        if let nc = uiViewController.navigationController {
            self.configure(nc)
        }
    }
}


