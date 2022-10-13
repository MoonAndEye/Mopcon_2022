//
//  BeforeStartDemoCrossFinger.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/22.
//

import SwiftUI

struct BeforeStartDemoCrossFinger: View {
  var body: some View {
    VStack {
      CenterSentence(string: getString())
      Image("CodingLikeBuildChurch")
        .resizable()
        .aspectRatio(contentMode: .fit)
    }
  }
  
  private func getString() -> String {
    return "🤞 開始 Life coding 逆走鐘吧 🤞 \n  🤞🤞🤞🤞🤞🤞🤞🤞"
  }
}

struct BeforeStartDemoCrossFinger_Previews: PreviewProvider {
  static var previews: some View {
    BeforeStartDemoCrossFinger()
      .frame(width: 1440, height: 900)
  }
}
