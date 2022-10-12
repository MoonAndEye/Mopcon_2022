//
//  ClockNumberView.swift
//  MopconBackwardsClock
//
//  Created by cm0679 on 2022/10/11.
//

import SwiftUI

// mopcon106: 使用 VStack 做出一個代表 hour 的 View
// next: 要讓他會轉動，需要加上 rotaion effect
struct ClockNumberView: View {
  
  var hour: Int
  
  var body: some View {
    
    VStack {
      Text("\(hour)")
        .fontWeight(.black)
        .foregroundColor(.red)
      // mopcon108: 將字轉正
      // next: 做出一圈 1 ~ 12 的數字錶面
        .rotationEffect(.degrees(Double(30 * hour)))
      Spacer()
    }
    .padding()
    // 在這邊加上 rotation effect 即可
    // mopcon107: 加上 rotation 讓 1 在逆時鐘轉出來第 1 個
    // next: 字也會同時 rotate，要再轉回來
    .rotationEffect(.degrees(Double(-30 * hour)))
  }
}

// mopcon109: 做出逆走鐘的 1 ~ 12 錶面
// next: 產生 ClockContainerView 把針和錶面裝在一起
struct BackwardsClockNumbers: View {
    
    var body: some View {
        ZStack {
            ForEach(1..<13) { i in
                ClockNumberView(hour: i)
            }
        }
    }
}

struct ClockNumberView_Previews: PreviewProvider {
  static var previews: some View {
    ClockNumberView(hour: 10)
      .previewLayout(.fixed(width: 200, height: 200))
    
    BackwardsClockNumbers()
      .previewLayout(.fixed(width: 200, height: 200))
  }
}
