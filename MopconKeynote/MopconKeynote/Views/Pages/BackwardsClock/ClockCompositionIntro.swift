//
//  ClockCompositionIntro.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/22.
//

import SwiftUI

struct ClockCompositionIntro: View {
  var body: some View {
    LeftTextAndRightImage(text: text, image: clockCompositionImage)
  }
  
  private var clockCompositionImage: Image {
    Image("ClockComposition")
  }
  
  private var text: AnyView {
    AnyView(Text(getClockCompositionIntro()))
  }
  
  private func getClockCompositionIntro() -> String {
    return "一個時鐘的組成，可以拆成\n- 時針、分針、秒針\n- 錶盤\n- 動力來源(真實世界的機芯)"
  }
  
}

struct ClockCompositionIntro_Previews: PreviewProvider {
  static var previews: some View {
    ClockCompositionIntro()
  }
}
