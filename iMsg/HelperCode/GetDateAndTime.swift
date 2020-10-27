//
//  GetDateAndTime.swift
//  iMsg
//
//  Created by Tejas M R on 27/10/20.
//

import SwiftUI

// To get the current date/time in different formats

func getTime() -> String {
    
     let time = Date()
     let timeFormatter = DateFormatter()
     timeFormatter.dateFormat = "HH:mm"
     let stringTime = timeFormatter.string(from: time)
     return stringTime
}
