//
//  Logger.swift
//  InfiniteMonkeyTyping
//
//  Created by cm0679 on 2022/8/18.
//

import Foundation

struct IMLogger {
    
    static func log(_ message: Any) {
        
        #if DEBUG
        print("\(message)")
        #endif
    }
}
