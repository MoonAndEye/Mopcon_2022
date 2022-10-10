//
//  ClockContainerView.swift
//  DemoBackwardsClock
//
//  Created by cm0679 on 2022/8/31.
//

import SwiftUI

struct ClockContainerView: View {
  
  var width: CGFloat = 200
  var height: CGFloat = 200
  
  @StateObject private var clockwork: Clockwork = .init()
  
  @State private var isShowingGraceQuote = false
  
  @State private var isShowingGraceWikiSheet = false
  
  @State private var isShowingColorPicker = false
  
  private let graceWikiPageURL = "https://en.wikipedia.org/wiki/Grace_Hopper"
  
  private let angleUtility: AngleUtility = .init()
  
  var body: some View {
    ZStack {
      
      Group {
        ClockDialView()
        HandShape(handLength: .hour)
          .fill(Color.blue)
          .rotationEffect(Angle(degrees: clockwork.hourAngle))
        HandShape(handLength: .minute)
          .fill(Color.cyan)
          .rotationEffect(Angle(degrees: clockwork.minuteAngle))
        HandShape(handLength: .second)
          .fill(Color.red)
          .rotationEffect(Angle(degrees: clockwork.secondAngle))
        Circle()
          .fill(Color.orange)
          .frame(width: 20, height: 20, alignment: .center)
      }
      .frame(width: width, height: height, alignment: .center)
      .offset(x: 0, y: -180)
    }
  }
}

struct ClockContainerView_Previews: PreviewProvider {
  static var previews: some View {
    ClockContainerView()
  }
}
