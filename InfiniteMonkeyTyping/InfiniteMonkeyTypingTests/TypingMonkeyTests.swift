//
//  MonkeyTypingTests.swift
//  InfiniteMonkeyTypingTests
//
//  Created by cm0679 on 2022/7/16.
//

import XCTest

class TypingMonkeyTests: XCTestCase {
    
    var typingMonkey: TypingMonkey!

    override func setUpWithError() throws {
        try super.setUpWithError()
        typingMonkey = TypingMonkey()
    }

    override func tearDownWithError() throws {
        typingMonkey = nil
        try super.tearDownWithError()
    }
    
    func test_typedStrings() {
        
        let expect = expectation(description: "typingMonkey")
        
        typingMonkey.startTyping()
        
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            print(self.typingMonkey.typedResult)
            XCTAssert(self.typingMonkey.typedResult.count > 50)
            expect.fulfill()
        }
        wait(for: [expect], timeout: 3)
    }
}
