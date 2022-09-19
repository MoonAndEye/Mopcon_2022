//
//  LandingView.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/18.
//

import SwiftUI

struct LandingView: View {
    
    @State var currentPageIndex = 0
    
    private var frameWidth: CGFloat {
        return 50
    }
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            pageSwitchView
            
            getPage(at: currentPageIndex)
            
            Spacer()
        }
    }
    
    private var pageSwitchView: some View {
        
        HStack {
            
            Button {
                switchToPreviousPage()
                print("go to previous page")
            } label: {
                Image(systemName: "arrow.left")
                    .frame(minWidth: frameWidth)
            }
            
            Button {
                switchToNextPage()
                print("go to next page")
            } label: {
                Image(systemName: "arrow.right")
                    .frame(minWidth: frameWidth)
            }
            
            Spacer()
        }
        .padding()
    }
    
    private func switchToPreviousPage() {
        if currentPageIndex > 0 {
            currentPageIndex -= 1
        }
    }
    
    private func switchToNextPage() {
        currentPageIndex += 1
    }
}

extension LandingView {
    
    @ViewBuilder
    func getPage(at index: Int) -> some View {
        
        switch index {
            case 0:
                DummyPage1()
            case 1:
                DummyPage2()
            case 2:
                DummyPage3()
            default:
                DummyPage1()
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
            .frame(width: 650, height: 450)
            .preferredColorScheme(.light)
    }
}
