//
//  LandingView.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/18.
//

import SwiftUI

struct LandingView: View {
    
    @StateObject var pageManager: PageManager = .init()
    
    private var frameWidth: CGFloat {
        return 50
    }
    
    private var pages: [AnyView] = [DummyPage1(), DummyPage2(), DummyPage3()]
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            pageSwitchView
            
            DummyPage1()
            
            Spacer()
        }
    }
    
    private var pageSwitchView: some View {
        
        HStack {
            
            Button {
                pageManager.switchToPreviousPage()
                print("go to previous page")
            } label: {
                Image(systemName: "arrow.left")
                    .frame(minWidth: frameWidth)
            }
            
            Button {
                pageManager.switchToNextPage()
                print("go to next page")
            } label: {
                Image(systemName: "arrow.right")
                    .frame(minWidth: frameWidth)
            }
            
            Spacer()
        }
        .padding([.top, .leading])
    }
}

extension LandingView {
    
    
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
            .frame(width: 650, height: 450)
            .preferredColorScheme(.light)
    }
}
