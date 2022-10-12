//
//  AngleUtility.swift
//  MopconBackwardsClock
//
//  Created by cm0679 on 2022/10/12.
//

import Foundation

// mopcon115: 宣告角度計算器
// next: 完成角度計算實作
struct AngleUtility {
  
  // mopcon118: 實作普通時鐘的角度計算
  // next: 實作逆走鐘
  private let dateUtility: DateUtility = .init()
  
  // mopcon116: 實作角度
  // next: 日期計算
  func getSecondHandDegree(from timeInterval: TimeInterval) -> Double {
    guard let second = dateUtility.getSecond(from: timeInterval) else {
      return 0
    }
    return Double(second) / 60 * 360
  }
  
  func getMinuteHandDegree(from timeInterval: TimeInterval) -> Double {
    guard let minute = dateUtility.getMinute(from: timeInterval) else {
      return 0
    }
    return Double(minute) / 60 * 360
  }
  
  func getHourHandDegree(from timeInterval: TimeInterval) -> Double {
    guard let hour = dateUtility.getHour(from: timeInterval),
          let minute = dateUtility.getMinute(from: timeInterval) else {
            return 0
          }
    
    let hourMod = hour % 12
    let majorRadius = Double(hourMod) / 12 * 360
    let minorRadius = getMinorHourDegree(from: minute)
    return majorRadius + minorRadius
  }
  /// 60 分鐘一小時，一小時角度 30，所以每 1 分鐘都會佔 1 / 60 * 30 度，也就是 0.5 度
  private func getMinorHourDegree(from minute: Int) -> Double {

      return Double(minute) / 60 * 30 //(360 / 12)
  }
  
  // mopcon119: 逆走鐘角度計算器
  // next: 裝進 view 裡面
  func getBackwardsSecondHandDegree(from timeInterval: TimeInterval) -> Double {
    return -getSecondHandDegree(from: timeInterval)
  }
  
  func getBackwardsMinuteHandDegree(from timeInterval: TimeInterval) -> Double {
    return -getMinuteHandDegree(from: timeInterval)
  }
  
  func getBackwardsHourHandDegree(from timeInterval: TimeInterval) -> Double {
    return -getHourHandDegree(from: timeInterval)
  }
}

extension AngleUtility {
  // mopcon117: 日期計算器，輸入 timeInterval，輸出 時/分/秒
  // next: 讓計算角度的類別呼叫
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
}
