//
//  BottomBarItem.swift
//  iMsg
//
//  Created by Tejas M R on 26/10/20.
//

import SwiftUI

// If the image/icon in the bottom bar is an asset, set isAsset to true and if it is a system SF icon, isAsset is set to false

struct BottomBarItem: View {
    var imageName: String
    var systemName: String
    var isAsset: Bool
    var width: CGFloat
    
    var body: some View {
        
        // Check if isAsset is set
        if isAsset {
            Image(imageName)
                .resizable()
                .frame(width: width, height: 25)
                .padding(7.5)
                .padding(.horizontal, 10)
                .foregroundColor(Color.blue)
                .background(Color.white)
                .clipShape(Circle())
                .shadow(radius: 5)
        }
        
        // If isAsset is false
        else {
            Image(systemName: imageName)
                .resizable()
                .frame(width: width, height: 25)
                .padding(7.5)
                .padding(.horizontal, 10)
                .foregroundColor(Color.blue)
                .background(Color.white)
                .clipShape(Circle())
                .shadow(radius: 5)
        }
    }
}

struct BottomBarItem_Previews: PreviewProvider {
    static var previews: some View {
        BottomBarItem(imageName: "person.badge.plus", systemName: "", isAsset: false, width: 25)
    }
}
