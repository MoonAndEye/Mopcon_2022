//
//  ClockContainerView.swift
//  MopconBackwardsClock
//
//  Created by cm0679 on 2022/10/11.
//

import SwiftUI
import Combine

struct ClockContainerView: View {
  
  // mopcon112: State 角度
  // next: 做出 timer 連上 view
  @State var hourAngle: Angle = .degrees(60)
  
  @State var minuteAngle: Angle = .degrees(300)
  
  @State var secondAngle: Angle = .degrees(180)
  
  // mopcon113: timer publish
  // next: view onRecieve timestamp
  private var timer = Timer.publish(every: 0.1,  on: .main, in: .common)
    .autoconnect()
  
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
        .rotationEffect(hourAngle)
      HandShape(handLength: .minute)
        .fill(.blue)
        .rotationEffect(minuteAngle)
      HandShape(handLength: .second)
        .fill(.red)
        .rotationEffect(secondAngle)
    }
    .frame(width: 300, height: 300)
    .padding()
    // mopcon114: 接收 timer 送過來的訊號
    // next: 寫 AngleUtility 將 timestamp 轉換成 時/分/秒針 角度
    .onReceive(timer) { timestamp in
      print("got time: \(timestamp)")
    }
  }
}

struct ClockContainerView_Previews: PreviewProvider {
  static var previews: some View {
    ClockContainerView()
  }
}
