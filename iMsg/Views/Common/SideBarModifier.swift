//
//  SideBarModifier.swift
//  iMsg
//
//  Created by Tejas M R on 10/11/20.
//

import SwiftUI

final class SideBarModifier: ViewModifier {
    
    func body(content: Content) -> some View {
    
        content
            .animation(.easeIn)
    }
}
