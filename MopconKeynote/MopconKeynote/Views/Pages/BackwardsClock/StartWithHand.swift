//
//  StartWithHand.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/1.
//

import SwiftUI

struct StartWithHand: View {
  var body: some View {
    
    LeftViewAndRightView(leftView: textView, rightView: handImage)
  }
  
  private var textView: AnyView {
    
    AnyView(
      VStack {
        Spacer()
        Text("先畫一根針，針從 View 的中間開始畫，畫到 x 一半 y 為 0 的地方，再畫到中間，然後填上顏色")
          .lineSpacing(10)
        Spacer()
      }
        .font(.system(size: 40))
        .padding(.leading, 40)
    )
  }
  
  private var handImage: AnyView {
    
    AnyView(
      HStack {
        Spacer()
          .frame(minWidth: 10)
        Rectangle()
          .stroke(.green)
          .overlay(.red, in: HandShape(handLength: .hour))
          .padding()
        Spacer()
          .frame(minWidth: 10)
      }
    )
  }
}

struct StartWithHand_Previews: PreviewProvider {
  static var previews: some View {
    StartWithHand()
      .frame(width: 800, height: 600)
  }
}
