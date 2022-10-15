//
//  Acknowledgements.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/11.
//

import SwiftUI

/// 致謝頁
struct Acknowledgements: View {
  
  private let duration: Double = 5.0
  private let endAnimationDuration: Double = 1.5
  
  @State private var animationStart = false
  @State private var animationEnd = false
  
  private var acknowledgementsWords: String {
    "特別感謝 \n戴铭老師\n13\n波肥\nPaul\n老房東\nAppCoda\nPriyans Brahmbhatt\n在 SwiftUI 練習過程中，給我的靈感和建議。\n這次分享的方式\n靈感來自戴铭老師在 Apple 加速器的分享"
  }
  
  var body: some View {
    VStack {
      Button {
        animationStart.toggle()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + duration) {
          animationEnd.toggle()
        }
      } label: {
        Text("致謝")
      }

      Spacer()
      
      starWarEffectView
        .padding()
        .frame(width: 1440, height: animationStart ? 900 : 0)
        .animation(.linear(duration: animationEnd ? endAnimationDuration : duration), value: animationStart)
    }
  }
  
  var plainView: some View {
    Text(acknowledgementsWords)
      .font(.system(size: MKFontSize.textTitle, weight: .bold))
      .multilineTextAlignment(.center)
      .lineSpacing(10)
      .padding()
  }
  /// Star war effect 在 macOS 中和 iOS 的反應不同
  var starWarEffectView: some View {
    Text(acknowledgementsWords)
      .font(.system(size: MKFontSize.textTitle, weight: .bold))
      .multilineTextAlignment(.center)
      .lineSpacing(10)
      .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
  }
}

struct Acknowledgements_Previews: PreviewProvider {
  static var previews: some View {
    Acknowledgements()
      .frame(width: 1440, height: 900)
  }
}
