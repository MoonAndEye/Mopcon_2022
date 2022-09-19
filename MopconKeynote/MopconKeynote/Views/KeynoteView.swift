//
//  LandingView.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/18.
//

import SwiftUI

struct KeynoteView: View {
  
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
    .padding([.top, .leading], 50)
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

extension KeynoteView {
  
  @ViewBuilder
  func getPage(at index: Int) -> some View {
    
    switch index {
      case 0:
        TalkLandingPageView()
      case 1:
        OneWayDataFlow()
      case 2:
        DummyPage3()
      default:
        DummyPage1()
    }
  }
}

struct LandingView_Previews: PreviewProvider {
  static var previews: some View {
    KeynoteView()
      .frame(width: 650, height: 450)
      .preferredColorScheme(.light)
  }
}
