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
  
  @State private var animationStart = false
  
  private var acknowledgementsWords: String {
    "特別感謝 \n戴铭老師\n13\n波肥\nPaul\n老房東\n在 SwiftUI 練習過程中，給我的靈感和建議。"
  }
  
  var body: some View {
    VStack {
      Spacer()
      plainView
        .transition(.offset(.init(width: 0, height: 0)))
        .animation(.default, value: animationStart)
    }
    .onAppear {
      withAnimation {
        self.animationStart.toggle()
      }
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
      .padding()
      .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
  }
}

struct Acknowledgements_Previews: PreviewProvider {
  static var previews: some View {
    Acknowledgements()
      .frame(width: 1440, height: 900)
  }
}
