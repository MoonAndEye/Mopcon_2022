//
//  HowToChoose.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/6.
//

import SwiftUI

struct HowToChoose: View {
  
  private var titleText: String {
    "在專案中如何選擇用 SwiftUI / UIKit?"
  }
  
  private var contentText: String {
    "．專案可控制程度\n． 可以和「需求方」談判的程度\n． 可以支援 iOS 13 以上嗎?\n． 設計上是不是一個主頁式的 App?(如果是的話，比較適合)\n． 設計上是不是多分頁型 App?(如果是的話，UIKit「可能」比較適合)"
  }
  
  var body: some View {
    NormalTemplate(titleText: titleText, contentText: contentText)
  }
}

struct HowToChoose_Previews: PreviewProvider {
  static var previews: some View {
    HowToChoose()
      .frame(width: 800, height: 600)
  }
}
