//
//  BackwardsClockAppStorePage.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/22.
//

import SwiftUI

/// 展示在 App Store 架上的資訊
struct BackwardsClockAppStorePage: View {
  var body: some View {
    
    LeftTextAndRightImage(text: text, image: image)
  }
  
  var image: Image {
    Image("BackwardsClockAppStore")
  }
  
  var text: AnyView {
    AnyView(Text(getTextString()))
  }
  
  private func getTextString() -> String {
    return "這個 App 只有 4.8 MB，這裡面是有使用第三方 lib 的，不過除了 App Icon 以外，沒有其他 png 檔，都是用 SwiftUI View/Path 和 SFSymbol 組合起來的。第三方 libs 都是用 spm\n- Firebase Analytics\n- Firebase Crashlytics\n- RevenueCat(訂閱制第三方服務)"
  }
}

struct BackwardsClockAppStorePage_Previews: PreviewProvider {
  static var previews: some View {
    BackwardsClockAppStorePage()
  }
}
