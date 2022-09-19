//
//  TalkLandingPageView.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/19.
//

import SwiftUI

/// 放在第一頁，有個大標題，和講者
struct TalkLandingPageView: View {
  
  var body: some View {
    VStack {
      Group {
        Spacer()
        Text("使用 SwiftUI 寫出有趣的 Apps")
          .padding(.top, 20)
          .font(.system(size: MKFontSize.landingTitleSize, weight: .semibold, design: .monospaced))
          .lineLimit(1)
        
        Group {
          HStack {
            Spacer()
            VStack(alignment: .trailing) {
              Text("CMoney iOS 開發")
              Text("Marvin Lin")
            }
            .multilineTextAlignment(.trailing)
            .padding(.trailing, 50)
            .padding(.top, 20)
          }
        }
        .font(.system(size: MKFontSize.landingBodySize, weight: .medium))
        Spacer()
      }
      .padding()
    }
    
  }
}

struct TalkLandingPageView_Previews: PreviewProvider {
  static var previews: some View {
    TalkLandingPageView()
      .previewLayout(.fixed(width: 800, height: 600))
      .preferredColorScheme(.light)
  }
}
