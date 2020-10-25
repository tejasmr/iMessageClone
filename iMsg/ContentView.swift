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
            Chats()
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



struct Chats: View {
    @State var showingNewContactView = false
    @EnvironmentObject var users: Users
    
    var body: some View {
        ZStack {
            if self.users.showingSidebar {
                VStack(alignment: .leading) {
                    withAnimation {
                        SideBarView()
                    }
                }
            }
            else {
                MainView()
            }
        }
        .navigationBarItems(leading: Button(action: {
            self.users.showingSidebar.toggle()
        }) {
            Image(systemName: "line.horizontal.3")
                .resizable()
                .frame(width: 25, height: 18)
                .foregroundColor(Color.white)
            
        })
        .navigationBarTitle("Chats", displayMode: .inline)
        .background(NavigationConfigurator { nc in
            nc.navigationBar.barTintColor = UIColor(Color.green)
        })
    }
}
