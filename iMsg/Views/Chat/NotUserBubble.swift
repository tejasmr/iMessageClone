//
//  NotUserBubble.swift
//  iMsg
//
//  Created by Tejas M R on 25/10/20.
//

import SwiftUI

// It is a message enclosed in a bubble(container), which sticks to the left side.  If the toggleTime flag is unset, the time and username is not shown.

struct NotUserBubble: View {
    @State var color: Color = Color.blue
    @State var content: String = "Lorem Ipsum"
    @State var timeStamp: String = "23:43"
    @State var username: String = "anon"
    @State private var toggleTime: Bool = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            Text(content)
                .fontWeight(.bold)
                .padding(10)
                .background(color)
                .foregroundColor(.white)
                .cornerRadius(18, corners: [.bottomLeft, .topRight, .bottomRight])
                .lineLimit(nil)
                .fixedSize(horizontal: false, vertical: true)
                
                .frame(width: UIScreen.main.bounds.size.width - 50, alignment: .leading)
            if toggleTime {
                HStack(spacing: 0) {
                    Text(username)
                        .font(.system(size: 13, weight: .bold))
                    Text(" (" + timeStamp + ")")
                        .font(.system(size: 13, weight: .bold))
                    
                }
            }
        }
        .frame(width: UIScreen.main.bounds.size.width - 50, alignment: .leading)
        .onTapGesture(perform: {
            withAnimation {
                self.toggleTime.toggle()
            }
        })
        .shadow(radius: 4)
        
    }
}


struct NotUserBubble_Previews: PreviewProvider {
    static var previews: some View {
        NotUserBubble()
    }
}
