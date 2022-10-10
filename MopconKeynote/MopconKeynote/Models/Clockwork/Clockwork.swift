//
//  Clockwork.swift
//  DemoBackwardsClock
//
//  Created by cm0679 on 2022/9/6.
//

import Foundation
import Combine

// 機芯
class Clockwork: ObservableObject {
    
    var timer: Cancellable?
    
    var timestamp: TimeInterval = 0
    
    @Published var secondAngle: Double = .zero
    
    @Published var minuteAngle: Double = .zero
    
    @Published var hourAngle: Double = .zero
    
    private var angleUtility: AngleUtility = .init()
    
    private var dateUtility: DateUtility = .init()
    
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
        self.timestamp = timestamp
    }
    
    private func calculateAngle(from timeInterval: TimeInterval) {
        
        secondAngle = angleUtility.getBackwardsSecondHandRadius(from: timeInterval)
        minuteAngle = angleUtility.getBackwardsMinuteHandRadius(from: timeInterval)
        hourAngle = angleUtility.getBackwardsHourHandRadius(from: timeInterval)
    }
    
    private func update(timeInterval: TimeInterval) {
        timestamp = timeInterval
        print("timestamp updated: \(timestamp)")
    }
}
