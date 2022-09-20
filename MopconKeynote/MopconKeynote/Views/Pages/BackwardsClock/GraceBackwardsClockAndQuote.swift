//
//  GraceRealityQuote.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/20.
//

import SwiftUI

struct GraceBackwardsClockAndQuote: View {
  var body: some View {
    
    LeftTextAndRightImage(text: text, image: image)
  }
  
  var image: Image {
    Image("BackwardsClockAndQuote")
  }
  
  var text: AnyView {
    AnyView(Text(getGraceQuote()))
  }
  
  private func getGraceQuote() -> String {
    return "人們其實討厭改變，他們總是說\n「我們一直都這麼做的」但，我想要反抗這一點\n所以我掛了一個逆著走的時鐘在牆上。"
  }
}

struct GraceBackwardsClockAndQuote_Previews: PreviewProvider {
  static var previews: some View {
    GraceBackwardsClockAndQuote()
  }
}
