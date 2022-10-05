//
//  HandShape.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/5.
//

import SwiftUI

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

struct HandShape_Previews: PreviewProvider {
  static var previews: some View {
    HandShape(handLength: .hour)
  }
}
