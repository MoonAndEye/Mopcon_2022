//
//  InputTextDemoPage.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/19.
//

import SwiftUI

struct InputTextDemoPage: View {
  
  private var width: CGFloat {
    ScreenSize.shared.width * 0.13
  }
  
  var body: some View {
    
    TwoViewHAlignment(titleText: "", view0: introductionView, view1: inputViewDemo)
  }
  
  private var introductionView: AnyView {
    AnyView(
      VStack {
        Text(getIntroductionText())
          .font(.system(size: MKFontSize.textBody))
          .minimumScaleFactor(0.4)
          .lineSpacing(10)
        Image("InputDemoCode")
          .resizable()
          .scaledToFit()
      }
    )
  }
  
  private func getIntroductionText() -> String {
    return "這邊舉輸入框為例，如果輸入框沒有文字，就顯示提示詞。如果框入框有文字，從上方呈現輸入框中的文字。\n這個需求對 UIKit 來說不是做不到，也不會做的比較差，只是「方法」不一樣而已。"
  }
  
  private var inputViewDemo: AnyView {
    AnyView(
      ZStack {
        Image("WhiteBackgroundWithBezel")
          .resizable()
          .aspectRatio(contentMode: .fit)
        
        InputTextDemo()
          .frame(width: width)
          .border(.black, width: 1.0)
          .padding(.horizontal, 5)
      }
    )
  }
}

struct InputTextDemoPage_Previews: PreviewProvider {
  static var previews: some View {
    InputTextDemoPage()
  }
}
