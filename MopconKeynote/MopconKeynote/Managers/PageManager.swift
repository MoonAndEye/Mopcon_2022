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
    
    private var pages: [Any] = [DummyPage1(), DummyPage2(), DummyPage3()]
    
    func switchToPreviousPage() {
        
        if currentPageIndex > 0 {
            currentPageIndex -= 1
            updateView(index: currentPageIndex)
        }
    }
    
    func switchToNextPage() {
        
        currentPageIndex += 1
        updateView(index: currentPageIndex)
    }
    
    private func updateView(index: Int) {
        
        currentPage = getCurrentView() ?? DummyPage1()
    }
    
    func getCurrentView() -> AnyView? {
        if pages.indices.contains(currentPageIndex),
         let page = pages[currentPageIndex] as? AnyView {
            return page
        }
//        fatalError("got error")
        return nil
    }
}
