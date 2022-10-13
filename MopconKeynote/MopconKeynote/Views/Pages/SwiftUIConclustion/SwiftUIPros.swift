//
//  SwiftUIPros0.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/6.
//

import SwiftUI

struct SwiftUIPros: View {
  
  private var titleText: String {
    "使用 SwiftUI 帶來的好處"
  }
  
  private var contentText: String {
    [
      content0,
      content1,
      content2,
      content3,
      content4
    ].joined(separator: "\n")
  }
  
  private var content0: String {
    "．相同 UI spec 的程式碼行數，通常是 SwiftUI 會比較少"
  }
  
  private var content1: String {
    "．如果還有 animation 需求，SwiftUI 和 UIKit 的差距會更多"
  }
  
  private var content2: String {
    "．SwiftUI 在處理 animation 時，框架有幫你做到過場中止時的處理"
  }
  
  private var content3: String {
    "．新的 extension 像是 Widget 的 UI 都是用 SwiftUI，如果你要把某個 View 放到 Widget 上，只要改一下 UI 參數即可"
  }
  
  private var content4: String {
    "．SwiftUI 和 UIKit 有做對接的方法，如果某個 feature 真的在 SwiftUI 很難處理，建議可以用 UIHostingViewController 做，再裝進 VC 裡面"
  }
  
  var body: some View {
    NormalTemplate(titleText: titleText, contentText: contentText, lineSpacing: 40)
  }
}

struct SwiftUIPros0_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIPros()
      .frame(width: 800, height: 600)
  }
}
