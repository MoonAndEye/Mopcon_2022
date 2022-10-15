//
//  NotIncludeInThisTalk.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/14.
//

import SwiftUI

/// 這次 demo 中沒有實作，但做 App 高機率會用到的元件
struct NotIncludeInThisTalk: View {
  
  private var titleText: String {
    "這次 demo 中沒有實作，但做 App 高機率會用到的元件"
  }
  
  private var contentText: String {
    [
      content0,
      content0_0,
      content0_1,
      content1,
      content1_0,
      content2,
      content3
    ].joined(separator: "\n")
  }
  
  private var content0: String {
    "．列表型 UI/格子型 UI"
  }
  
  private var content0_0: String {
    "    ．UIKit 很擅長這一類 UI"
  }
  
  private var content0_1: String {
    "    ．Cell 有新增 UIHostingConfiguration，讓 cell 可以直接使用 SwiftUI"
  }
  
  private var content1: String {
    "．和後端進行 API 溝通的行為"
  }
  
  private var content1_0: String {
    "    ．Live coding 不確定性太高"
  }
  
  private var content2: String {
    "．實機上會大量使用的功能 eg: 相機/GPS/陀螺儀/聲音"
  }
  
  private var content3: String {
    "．Widget 相關功能"
  }
  
  var body: some View {
    
    NormalTemplate(titleText: titleText, contentText: contentText)
  }
}

struct NotIncludeInThisTalk_Previews: PreviewProvider {
  static var previews: some View {
    NotIncludeInThisTalk()
      .frame(width: 1440, height: 900)
  }
}
