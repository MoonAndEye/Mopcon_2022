//
//  TypingMonkey.swift
//  InfiniteMonkeyTyping
//
//  Created by cm0679 on 2022/7/16.
//

import Foundation
import Combine

/// 打字的猴子
class TypingMonkey {
    
    private var alphabet: [String] {
        let characters = "abcdefghijklmnopqrstuvwxyz"
        var chars: [String] = .init()
        for char in characters {
            chars.append(String(char))
        }
        return chars
    }
    
    // TODO: 之後可以再調，所以要開出 set function
    // 產出一個字的時間
    private let typingInterval: TimeInterval = 0.01
    
    private(set) var typedResult: [String] = []
    
    private var timer: Cancellable?
    
    func startTyping() {
        setTimer()
    }
    
    private func setTimer() {
        
        // no matter current state, just invalidate timer
        timer?.cancel()
        
        timer = Timer
            .publish(every: typingInterval, on: .main, in: .common)
            .autoconnect()
            .sink { [weak self] _ in
                self?.typing()
            }
    }
    
    private func stopTimer() {
        timer?.cancel()
    }

    private func typing() {
        let typedString = createRandomString()
        typedResult.append(typedString)
    }
    
    private func createRandomString() -> String {
        
        return alphabet.randomElement() ?? ""
    }
}
