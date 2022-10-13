//
//  OneWayDataFlow.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/19.
//

import SwiftUI

struct OneWayDataFlow: View {
  
  private var titleText: String {
    "SwiftUI data flow"
  }
  
  private var textView: AnyView {
    AnyView(
      Text("SwiftUI 是用聲明式的方式來告訴框架該如何繪製 UI。\n要求改變的訊號可能是從 external event 或是使用者發動，觸發了 action，改變 State。\n當 State 改變，SwiftUI 會自動去更新相關的 UI\n在以前 UIKit 框架下，這個角色是 ViewController 的職責")
    )
  }
  
  private var image: Image {
    Image("StateAndDataFlow")
  }
  
  var body: some View {
    LeftTextAndRightImageWithTitle(title: titleText, textView: textView, image: image)
  }
  
}

struct OneWayDataFlow_Previews: PreviewProvider {
  static var previews: some View {
    OneWayDataFlow()
      .preferredColorScheme(.light)
  }
}
