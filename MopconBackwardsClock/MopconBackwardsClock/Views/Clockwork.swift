//
//  Clockwork.swift
//  MopconBackwardsClock
//
//  Created by cm0679 on 2022/10/12.
//

import Foundation
import Combine
import SwiftUI

// 機芯
class Clockwork: ObservableObject {
    
    var timer: Cancellable?
    
    @Published var secondAngle: Angle = .zero
    
    @Published var minuteAngle: Angle = .zero
    
    @Published var hourAngle: Angle = .zero
    
    private var angleUtility: AngleUtility = .init()
    
    init() {
        startTimer()
    }
    
    func stopTimer() {
        timer?.cancel()
    }
    
    func startTimer() {
        timer = Timer
            .publish(every: 0.1, on: .main, in: .common)
            .autoconnect()
            .sink { [weak self] _ in
                self?.updateTime()
            }
    }
    
    private func updateTime() {
        let timestamp = Date().timeIntervalSince1970
        calculateAngle(from: timestamp)
    }
    
    private func calculateAngle(from timeInterval: TimeInterval) {
        
        secondAngle = Angle(degrees: angleUtility.getBackwardsSecondHandDegree(from: timeInterval))
        minuteAngle = Angle(degrees: angleUtility.getBackwardsMinuteHandDegree(from: timeInterval))
        hourAngle = Angle(degrees: angleUtility.getBackwardsHourHandDegree(from: timeInterval))
    }
}
