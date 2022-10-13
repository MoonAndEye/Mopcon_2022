//
//  ClockContainerView.swift
//  MopconBackwardsClock
//
//  Created by cm0679 on 2022/10/11.
//

import SwiftUI
import Combine

struct ClockContainerView: View {
  
  @StateObject private var clockwork = Clockwork()

  var body: some View {
    
    ZStack {
      Circle()
        .stroke(.pink)
      BackwardsClockNumbers()
      
      HandShape(handLength: .hour)
        .fill(.yellow)
        .rotationEffect(clockwork.hourAngle)
      HandShape(handLength: .minute)
        .fill(.blue)
        .rotationEffect(clockwork.minuteAngle)
      HandShape(handLength: .second)
        .fill(.red)
        .rotationEffect(clockwork.secondAngle)
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
