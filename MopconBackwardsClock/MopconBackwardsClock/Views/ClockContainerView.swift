//
//  ClockContainerView.swift
//  MopconBackwardsClock
//
//  Created by cm0679 on 2022/10/11.
//

import SwiftUI

struct ClockContainerView: View {
  var body: some View {
    
    // mopcon110: 畫出錶盤，加上數字
    // next: 加上 三根針，並蓋上一個圓蓋
    ZStack {
      Circle()
        .stroke(.black)
      BackwardsClockNumbers()
      
      // mopcon111: 三根針
      // next: rotation 改角度後，加上 state
      HandShape(handLength: .hour)
        .fill(.black)
        .rotationEffect(.degrees(60))
      HandShape(handLength: .minute)
        .fill(.blue)
        .rotationEffect(.degrees(300))
      HandShape(handLength: .second)
        .fill(.red)
        .rotationEffect(.degrees(180))
    }
    .frame(width: 300, height: 300)
    .padding()
  }
}

struct ClockContainerView_Previews: PreviewProvider {
  static var previews: some View {
    ClockContainerView()
  }
}
