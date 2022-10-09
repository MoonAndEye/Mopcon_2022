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
      Image("ListIniOS13")
        .resizable()
        .aspectRatio(contentMode: .fit)
    )
  }
  
  private var view1: AnyView {
    AnyView(
      Image("ListIniOS14")
        .resizable()
        .aspectRatio(contentMode: .fit)
    )
  }
  
  private var view2: AnyView {
    AnyView(
      Image("ListIniOS15")
        .resizable()
        .aspectRatio(contentMode: .fit)
    )
  }
  
  var body: some View {
    ThreeViewHAlignment(titleText: titleText, view0: view0, view1: view1, view2: view2)
  }
}

struct ListSeparatorInDiffiOS_Previews: PreviewProvider {
  static var previews: some View {
    ListSeparatorInDiffiOS()
      .frame(width: 800, height: 600)
  }
}
