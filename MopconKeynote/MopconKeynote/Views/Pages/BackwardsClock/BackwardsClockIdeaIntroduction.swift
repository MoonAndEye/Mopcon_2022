//
//  BackwardsClockIdeaIntroduction.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/19.
//

import SwiftUI
/// 逆走鐘 idea 說明，源自 Grace Hopper
struct BackwardsClockIdeaIntroduction: View {
  
  var body: some View {
    LeftTextAndRightImageWithTitle(title: title, text: graceIntrodcution, image: image)
  }
  
  private var title: String {
    return "Demo App 的發想來源"
  }
  
  private var graceIntrodcution: AnyView {
    AnyView(
      VStack {
        Group {
          Text("這是一本寫給小孩子的童書，描述葛麗絲．霍普的一生")
          Text("葛麗絲這一生所做的事情，和每個寫程式的人，都有一定的關聯")
        }
        .padding()
      }
    )
  }
  
  private var image: Image {
    Image("GraceHopperBook")
  }
}

struct BackwardsClockIdeaIntroduction_Previews: PreviewProvider {
  static var previews: some View {
    BackwardsClockIdeaIntroduction()
  }
}
