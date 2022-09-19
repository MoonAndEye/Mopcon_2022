//
//  PageManager.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/18.
//

import SwiftUI
import Combine

class PageManager: ObservableObject {
    
    @Published var currentPageIndex: Int = 0
    
    @Published var currentPage: Any = DummyPage1()
    
    private var pages: [Any] = []
    
    func switchToPreviousPage() {
        
        if currentPageIndex > 0 {
            currentPageIndex -= 1
        }
    }
    
    func switchToNextPage() {
        
        currentPageIndex += 1
    }
    
}
