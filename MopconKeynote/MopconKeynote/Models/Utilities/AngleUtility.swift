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
  
  func getSecondHandDegree(from timeInterval: TimeInterval) -> Double {

      guard let second = dateUtility.getSecond(from: timeInterval) else {
          return 0
      }

      return (Double(second) / secondToMinute) * 360
  }

  func getBackwardsSecondHandDegree(from timeInterval: TimeInterval) -> Double {
      return -getSecondHandDegree(from: timeInterval)
  }

  func getMinuteHandDegree(from timeInterval: TimeInterval) -> Double {

      guard let minute = dateUtility.getMinute(from: timeInterval) else {
                return 0
            }

      return (Double(minute) / minuteToHour) * 360
  }

  func getBackwardsMinuteHandDegree(from timeInterval: TimeInterval) -> Double {
      return -getMinuteHandDegree(from: timeInterval)
  }

  func getHourHandDegree(from timeInterval: TimeInterval) -> Double {

      guard let hour = dateUtility.getHour(from: timeInterval),
            let minute = dateUtility.getMinute(from: timeInterval) else {
                return 0
            }

      let hourMod = hour % hourToOneCircle
      let majorRadius = (Double(hourMod) / Double(hourToOneCircle)) * 360
      let minorRadius = getMinorHourDegree(from: minute)
      return majorRadius + minorRadius
  }

  func getBackwardsHourHandDegree(from timeInterval: TimeInterval) -> Double {
      return -getHourHandDegree(from: timeInterval)
  }

  private func getMinorHourDegree(from minute: Int) -> Double {

      return Double(minute) / minuteToHour * 30 //(360 / 12)
  }
}
