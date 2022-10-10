//
//  DateUtility.swift
//  DemoBackwardsClock
//
//  Created by cm0679 on 2022/9/4.
//

import Foundation

struct DateUtility {
  
  private var calendar: Calendar {
    return Calendar(identifier: .iso8601)
  }
  
  func getSecond(from timeInterval: TimeInterval) -> Int? {
    
    return getDateComponents(from: timeInterval, components: Set([.second])).second
  }
  
  func getMinute(from timeInterval: TimeInterval) -> Int? {
    
    return getDateComponents(from: timeInterval, components: Set([.minute])).minute
  }
  
  func getHour(from timeInterval: TimeInterval) -> Int? {
    return getDateComponents(from: timeInterval, components: Set([.hour])).hour
  }
  
  private func getDateComponents(from timeInterval: TimeInterval, components: Set<Calendar.Component>) -> DateComponents {
    
    let date = Date(timeIntervalSince1970: timeInterval)
    return calendar.dateComponents(components, from: date)
  }
}
