//
//  AngleUtility.swift
//  DemoBackwardsClock
//
//  Created by cm0679 on 2022/9/4.
//

import Foundation

struct AngleUtility {
  
  private let secondToMinute: Double = 60
  
  private let minuteToHour: Double = 60
  
  private let hourToOneCircle: Int = 12
  
  private var dateUtility: DateUtility {
    return DateUtility()
  }
  
  func getSecondHandRadius(from timeInterval: TimeInterval) -> Double {

      guard let second = dateUtility.getSecond(from: timeInterval) else {
          return 0
      }

      return (Double(second) / secondToMinute) * 360
  }

  func getBackwardsSecondHandRadius(from timeInterval: TimeInterval) -> Double {
      return -getSecondHandRadius(from: timeInterval)
  }

  func getMinuteHandRadius(from timeInterval: TimeInterval) -> Double {

      guard let minute = dateUtility.getMinute(from: timeInterval) else {
                return 0
            }

      return (Double(minute) / minuteToHour) * 360
  }

  func getBackwardsMinuteHandRadius(from timeInterval: TimeInterval) -> Double {
      return -getMinuteHandRadius(from: timeInterval)
  }

  func getHourHandRadius(from timeInterval: TimeInterval) -> Double {

      guard let hour = dateUtility.getHour(from: timeInterval),
            let minute = dateUtility.getMinute(from: timeInterval) else {
                return 0
            }

      let hourMod = hour % hourToOneCircle
      let majorRadius = (Double(hourMod) / Double(hourToOneCircle)) * 360
      let minorRadius = getMinorHourRadius(from: minute)
      return majorRadius + minorRadius
  }

  func getBackwardsHourHandRadius(from timeInterval: TimeInterval) -> Double {
      return -getHourHandRadius(from: timeInterval)
  }

  private func getMinorHourRadius(from minute: Int) -> Double {

      return Double(minute) / minuteToHour * 30 //(360 / 12)
  }
}
