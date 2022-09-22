//
//  InputTextDemoPage.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/19.
//

import SwiftUI

struct InputTextDemoPage: View {
  
  private var width: CGFloat {
    ScreenSize.shared.width * 0.2
  }
  
  var body: some View {
    
    VStack {
      HStack {
        introductionView
        InputTextDemo()
          .frame(width: width)
          .border(.black, width: 1.0)
      }
    }
  }
  
  private var introductionView: some View {
    
    VStack {
      Text(getIntroductionText())
        .font(.system(size: MKFontSize.textBody))
        .lineSpacing(10)
      Image("InputDemoCode")
        .resizable()
        .scaledToFit()
    }
  }
  
  private func getIntroductionText() -> String {
    return "SwiftUI 的程式碼\nUI的改變，是因為狀態改變\nUIKit 不是做不到，也不會做的比較差，只是「方法」不一樣而已。UITextField 使用 delegate/action 的方式，告訴 VC 輸入框的文字變化了"
  }
}

struct InputTextDemoPage_Previews: PreviewProvider {
  static var previews: some View {
    InputTextDemoPage()
  }
}
