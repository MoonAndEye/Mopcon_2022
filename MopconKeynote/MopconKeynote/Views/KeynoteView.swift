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
      BobRossDone.self,
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
      GraceBackwardsClockAndQuote.self,
      /// 自己上架的 App，實際 app size
      BackwardsClockAppStorePage.self,
      /// 時鐘的三成份 針、錶盤、機芯
      ClockCompositionIntro.self,
      /// 開始寫專案前，先交叉手指
      BeforeStartDemoCrossFinger.self,
      /// 準備 live coding 之前，先介紹 hand view
      StartWithHand.self,
      /// 爆炸頭油畫完成，Bob Ross done
      BobRossDone.self,
      /// 說明如何選 SwiftUI / UIKit
      HowToChoose.self,
      /// 使用 SwiftUI 帶來不方便的地方
      SwiftUIDifficults.self,
      /// 使用 SwiftUI 的好處
      SwiftUIPros.self,
      /// 展示 List separator UI
      DemoListSeparator.self,
      /// 不同版本 iOS 要用不同方法把分隔線去掉
      ListSeparatorInDiffiOS.self,
      /// 在 List 之後的過場
      SegueAfterListSeparator.self,
      /// 多的是你不知道的事
      LotsOfThingIsYouDontKnow.self,
      /// 這次是 NavigationView 被 deprecated，下次呢?
      NavigationViewDeprecated.self,
      /// 各種已經實作的 SwifUI 範例
      SwiftUIUseCaseOverall.self,
    ]
  }
}

struct KeynoteView: View {
  
  @State var currentPageIndex = 0
  
  private var arrowFrameWidth: CGFloat {
    return 50
  }
  
  var body: some View {
    
    VStack(spacing: 0) {
      
      pageSwitchView
      
      getPage(at: currentPageIndex)
      
      Spacer()
      logoArea
        .frame(height: 75)
    }
  }
  
  private var pageSwitchView: some View {
    
    HStack {
      
      Button {
        switchToPreviousPage()
      } label: {
        Image(systemName: "arrow.left")
          .frame(minWidth: arrowFrameWidth)
      }
      .keyboardShortcut(KeyEquivalent.leftArrow, modifiers: [])
      
      Button {
        switchToNextPage()
      } label: {
        Image(systemName: "arrow.right")
          .frame(minWidth: arrowFrameWidth)
      }
      .keyboardShortcut(KeyEquivalent.rightArrow, modifiers: [])
      
      Spacer()
    }
    .padding()
    .padding([.top, .leading], 50)
  }
  
  private func switchToPreviousPage() {
    if currentPageIndex > 0 {
      currentPageIndex -= 1
      print("go to previous page, current: \(pages[currentPageIndex])")
    }
  }
  
  private func switchToNextPage() {
     
    if currentPageIndex + 1 == pages.count {
      return
    }
    currentPageIndex += 1
    print("go to next page, current: \(pages[currentPageIndex])")
  }
  
  private var logoArea: some View {
    HStack {
      Spacer()
      Image("Logo_Banner2")
        .resizable()
        .aspectRatio(contentMode: .fit)
    }
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
        case is BackwardsClockAppStorePage.Type:
          /// 自己上架的 App，實際 app size
          BackwardsClockAppStorePage()
        case is BeforeStartDemoCrossFinger.Type:
          /// 開始寫專案前，先交叉手指
          BeforeStartDemoCrossFinger()
        case is ClockCompositionIntro.Type:
          /// 時鐘的三成份 針、錶盤、機芯
          ClockCompositionIntro()
        case is StartWithHand.Type:
          StartWithHand()
        case is BobRossDone.Type:
          /// 爆炸頭油畫完成，Bob Ross done
          BobRossDone()
        case is HowToChoose.Type:
          /// 說明如何選 SwiftUI / UIKit
          HowToChoose()
        case is SwiftUIPros.Type:
          /// 使用 SwiftUI 的好處
          SwiftUIPros()
          
        case is SwiftUIDifficults.Type:
          /// 使用 SwiftUI 帶來不方便的地方
          SwiftUIDifficults()
        case is DemoListSeparator.Type:
          /// 展示 List separator UI
          DemoListSeparator()
        case is ListSeparatorInDiffiOS.Type:
          /// 不同版本 iOS 要用不同方法把分隔線去掉
          ListSeparatorInDiffiOS()
        case is LotsOfThingIsYouDontKnow.Type:
          /// 多的是你不知道的事.
          LotsOfThingIsYouDontKnow()
        case is SegueAfterListSeparator.Type:
          /// 在 List 之後的過場
          SegueAfterListSeparator()
        case is SwiftUIUseCaseOverall.Type:
          /// 各種已經實作的 SwifUI 範例
          SwiftUIUseCaseOverall()
          
        case is NavigationViewDeprecated.Type:
          /// 這次是 NavigationView 被 deprecated，下次呢?
          NavigationViewDeprecated()
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
