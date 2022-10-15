//
//  DemoFriendsPop.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/13.
//

import SwiftUI

struct PromoFriendsPop: View {
  
  private var titleText: String {
    "使用 SwiftUI 處理 UIKit 要寫很長的 feature"
  }
  
  private var image: Image {
    Image("FriendsPop")
  }
  
  var body: some View {
    OneImageWithTitle(title: titleText, image: image)
  }
}

struct DemoFriendsPop_Previews: PreviewProvider {
  static var previews: some View {
    PromoFriendsPop()
      .frame(width: 1440, height: 900)
  }
}
