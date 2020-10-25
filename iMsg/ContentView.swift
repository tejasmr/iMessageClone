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
            VStack {
                ScrollView {
                    ForEach(users.list, id: \.self) { user in
                        Divider()
                            .padding(.horizontal, 20)
                        ChatRoomView(user: user)
                    }
                    Divider()
                        .padding(.horizontal, 20)
                }
                    .padding(.top)
                VStack(alignment: .trailing) {
                    Button(action: {
                        self.showingNewContactView.toggle()
                    }) {
                        Image("NewContact")
                        .resizable()
                        .frame(width: 70, height: 70)
                    }
                        .sheet(isPresented: $showingNewContactView) {
                            NewContactView()
                    }
                }
                    .frame(width: UIScreen.main.bounds.size.width)
            }
            .navigationBarTitle("iMsg", displayMode: .inline)
            .background(NavigationConfigurator { nc in
                nc.navigationBar.barTintColor = UIColor(Color.green)
            })

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


