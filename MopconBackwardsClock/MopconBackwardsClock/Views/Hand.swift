//
//  Hand.swift
//  MopconBackwardsClock
//
//  Created by cm0679 on 2022/10/10.
//

import SwiftUI

// mopcon103: 宣告 enum 做出 時/分/秒 針
// next: 更改原來的 shape init，需代入 HandLength
enum HandLength {
  
  case second
  case minute
  case hour
  
  func getLengthRatio() -> Double {
    switch self {
      case .second:
        return 1
      case .minute:
        return 0.9
      case .hour:
        return 0.7
    }
  }
  
  func getSpacing() -> CGFloat {
    switch self {
      case .second:
        return 2
      case .minute:
        return 4
      case .hour:
        return 6
    }
  }
}

// mopcon104: 在 init 時需決定 HandLength
// next: 改 preview，現在 preview 不會動
struct HandShape: Shape {
  
  var spacing: CGFloat {
    return handLength.getSpacing()
  }
  
  var handLength: HandLength
  
  func path(in rect: CGRect) -> Path {
    
    var p = Path()
    
    p.move(to: CGPoint(x: rect.midX - spacing, y: rect.midY))
    p.addLine(to: CGPoint(x: rect.midX, y: getHandPointY(rect: rect, handLength: handLength)))
    p.addLine(to: CGPoint(x: rect.midX + spacing, y: rect.midY))
    
    return p
  }
  
  func getHandPointY(rect: CGRect, handLength: HandLength) -> CGFloat {
    
    let edge = min(rect.size.width, rect.size.height)
    return edge * ( 1 - handLength.getLengthRatio())
  }
}

struct Hand_Previews: PreviewProvider {
  static var previews: some View {
    // mopcon105: 時分秒針 preview 完成
    // next: 做出錶盤上的數字
    HandShape(handLength: .hour)
      .fill(.red)
      .previewLayout(.fixed(width: 200, height: 200))
    
    HandShape(handLength: .minute)
      .fill(.black)
      .previewLayout(.fixed(width: 200, height: 200))
    
    HandShape(handLength: .second)
      .fill(.yellow)
      .previewLayout(.fixed(width: 200, height: 200))
  }
}
