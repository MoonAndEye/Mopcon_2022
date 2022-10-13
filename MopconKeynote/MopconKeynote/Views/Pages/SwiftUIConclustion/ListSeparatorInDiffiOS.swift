//
//  ListSeparatorInDiffiOS.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/8.
//

import SwiftUI

struct ListSeparatorInDiffiOS: View {
  
  private var titleText: String {
    "不同的 iOS 會有不同的隱藏分隔線方法"
  }
  
  private var view0: AnyView {
    AnyView(
      
      VStack {
        getText("iOS 13 必須設定在 UITableView")
        Image("ListIniOS13")
          .resizable()
          .aspectRatio(contentMode: .fit)
      }
    )
  }
  
  private var view1: AnyView {
    AnyView(
      VStack {
        getText("iOS 14 要用 ScrollView 包 LazyVStack")
        Image("ListIniOS14")
          .resizable()
          .aspectRatio(contentMode: .fit)
      }
    )
  }
  
  private var view2: AnyView {
    AnyView(
      VStack {
        getText("iOS 15 如果要用 List，可以寫在 List 內的 view")
        Image("ListIniOS15")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .padding(.bottom)
      }
    )
  }
  
  var body: some View {
    ThreeViewHAlignment(titleText: titleText, view0: view0, view1: view1, view2: view2)
  }
  
  @ViewBuilder
  private func getText(_ string: String) -> Text {
    Text(string)
      .font(.system(size: MKFontSize.textBody, weight: .regular, design: .monospaced))
  }
}

struct ListSeparatorInDiffiOS_Previews: PreviewProvider {
  static var previews: some View {
    ListSeparatorInDiffiOS()
      .frame(width: 1440, height: 900)
  }
}
