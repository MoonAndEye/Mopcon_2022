//
//  SwiftUIDifficults.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/7.
//

import SwiftUI

struct SwiftUIDifficults: View {
  
  private var titleText: String {
    "使用 SwiftUI 帶來不方便的地方"
  }
  
  private var contentText: String {
    [
      content0,
      content1,
      content2,
      content3
    ]
      .joined(separator: "\n")
  }
  
  private var content0: String {
    "．一定要 iOS 13 以上"
  }
  
  private var content1: String {
    "．某些 API/Framework 還有可能只支援 iOS 16 以上，像是 Charts"
  }
  
  private var content2: String {
    "．框架相對年輕，有可能一個 feature 在 iOS 13 ~ 15 要用不同寫法"
  }
  
  private var content3: String {
    "．我們來看直向 List 元件的「分隔線」"
  }
  
  var body: some View {
    NormalTemplate(titleText: titleText, contentText: contentText, lineSpacing: 40)
  }
}

struct SwiftUIDifficults_Previews: PreviewProvider {
  static var previews: some View {
    SwiftUIDifficults()
      .frame(width: 800, height: 600)
  }
}
