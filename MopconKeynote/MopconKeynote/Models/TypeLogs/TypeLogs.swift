//
//  TypeLog.swift
//  DemoInfiniteMonkeyTyping
//
//  Created by cm0679 on 2022/9/13.
//

import Foundation

struct TypingLog: Identifiable, Hashable {
    
    let id: UUID = .init()
    
    let typedString: String
}
