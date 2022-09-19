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
    HStack(alignment: .top) {
      
      Group {
        
        VStack {
          Text(getGraceHopperIntroductionTitle())
            .font(.system(size: MKFontSize.textTitle))
          Text(getGraceHopperIntroductionBody())
            .font(.system(size: MKFontSize.textBody))
            .padding([.leading, .trailing, .top], 20)
        }
        .padding()
        
        Image("GraceHopperBook")
          .resizable()
          .scaledToFit()
      }
      .frame(minWidth: 0, maxWidth: .infinity)
    }
  }
  
  private func getGraceHopperIntroductionTitle() -> String {
    return "Demo App 的發想來源"
  }
  
  private func getGraceHopperIntroductionBody() -> String {
    return "這是一本寫給小孩子的童書，描述葛麗絲．霍普的一生\n葛麗絲這一生所做的事情，和每個寫程式的人，都有一定的關聯"
  }
}

struct BackwardsClockIdeaIntroduction_Previews: PreviewProvider {
  static var previews: some View {
    BackwardsClockIdeaIntroduction()
  }
}
