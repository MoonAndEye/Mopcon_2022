//
//  LandingView.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/18.
//

import SwiftUI

extension KeynoteView {
  
  private var pages: [Any] {
    [
      /// 開場 Title
      TalkLandingPageView.self,
      /// SwiftUI One way data flow 說明
      OneWayDataFlow.self,
      /// 做一個 input demo 的 data flow 範例
      InputTextDemoPage.self,
      /// 逆走鐘 idea 說明，源自 Grace Hopper
      BackwardsClockIdeaIntroduction.self,
      /// 葛麗絲．霍普 - bug 的說法
      GraceHopperDefineBugPage.self,
      /// 葛麗絲．霍普 - 讓電腦讀懂人類的語言
      GraceCreateFlowMatic.self,
      /// 葛麗絲放在牆上的標語和逆走鐘
      GraceBackwardsClockAndQuote.self
    ]
  }
}

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
      } label: {
        Image(systemName: "arrow.left")
          .frame(minWidth: frameWidth)
      }
      
      Button {
        switchToNextPage()
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
      print("go to previous page")
    }
  }
  
  private func switchToNextPage() {
     
    if currentPageIndex + 1 == pages.count {
      return
    }
    print("go to next page")
    currentPageIndex += 1
  }
}

extension KeynoteView {
  
  @ViewBuilder
  func getPage(at index: Int) -> some View {

    if pages.indices.contains(index) {
      
      switch pages[index].self {
        case is TalkLandingPageView.Type:
          /// 開場 Title
          TalkLandingPageView()
        case is OneWayDataFlow.Type:
          /// SwiftUI One way data flow 說明
          OneWayDataFlow()
        case is InputTextDemoPage.Type:
          /// 做一個 input demo 的 data flow 範例
          InputTextDemoPage()
        case is BackwardsClockIdeaIntroduction.Type:
          /// 逆走鐘 idea 說明，源自 Grace Hopper
          BackwardsClockIdeaIntroduction()
        case is GraceHopperDefineBugPage.Type:
          /// 葛麗絲．霍普 - bug 的說法
          GraceHopperDefineBugPage()
        case is GraceCreateFlowMatic.Type:
          /// 葛麗絲．霍普 - 讓電腦讀懂人類的語言
          GraceCreateFlowMatic()
        case is GraceBackwardsClockAndQuote.Type:
          /// 葛麗絲放在牆上的標語和逆走鐘
          GraceBackwardsClockAndQuote()
        default:
          DummyPage1()
      }
    } else {
      DummyPage1()
    }
  }
}

struct LandingView_Previews: PreviewProvider {
  static var previews: some View {
    KeynoteView()
      .frame(width: 1440, height: 900)
      .preferredColorScheme(.light)
  }
}
