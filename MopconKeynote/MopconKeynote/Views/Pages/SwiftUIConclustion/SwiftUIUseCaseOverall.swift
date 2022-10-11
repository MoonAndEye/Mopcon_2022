//
//  SwiftUIUseCaseInCM.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/9.
//

import SwiftUI

struct SwiftUIUseCaseOverall: View {
  
  private var titleText: String {
    "團隊應用 SwiftUI 的數種方法"
  }
  
  private var contentText: String {
    [
      content0,
      content0_1,
      content1,
      content1_1,
      content2,
      content3,
      content4
    ].joined(separator: "\n")
  }
  
  private var content0: String {
    "． 在 UIKit 專案中拿 SwiftUI 來做靜態頁面(不用與後端交互作用的 View)"
  }
  
  private var content0_1: String {
    "  ． 使用 UIHostingViewController 包 SwiftUI View"
  }
  
  private var content1: String {
    "． 在 UIKit 專案中拿來做 UIKit 不好做，但 SwiftUI 很好作的 View"
  }
  
  private var content1_1: String {
    "  ． 使用 delegate 和其他頁面/物件進行資料傳遞"
  }
  
  private var content2: String {
    "． 做 macOS 的 app，此專案是純 SwiftUI，但沒有 iOS 版"
  }
  
  private var content3: String {
    "． 做 Widget 應用類型的 App"
  }
  
  private var content4: String {
    "． 個人 side project (葛麗絲逆走鐘)"
  }
  
  var body: some View {
    NormalTemplate(titleText: titleText, contentText: contentText)
  }
}

struct SwiftUIUseCaseInCM_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIUseCaseOverall()
      .frame(width: 800, height: 600)
  }
}
