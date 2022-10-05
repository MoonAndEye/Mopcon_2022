//
//  LeftViewAndRightView.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/1.
//

import SwiftUI

struct LeftViewAndRightView: View {
  
  var leftView: AnyView
  
  var rightView: AnyView
  
  var textFont: CGFloat = MKFontSize.textBody
  
  @State var topPadding: CGFloat = 0
  
  var leadPadding: CGFloat = 40
  
  var trailingPadding: CGFloat = 40
  
  var body: some View {
    HStack(alignment: .top) {
      
      Group {
        leftView
        
        rightView
      }
      .frame(minWidth: 0, maxWidth: .infinity)
    }
  }
  
  init(leftView: AnyView, rightView: AnyView) {
    self.leftView = leftView
    self.rightView = rightView
  }
}

struct LeftViewAndRightView_Previews: PreviewProvider {
  
  static var leftView: AnyView {
    AnyView(Text("LeftView"))
  }
  
  static var rightView: AnyView {
    AnyView(Text("RightView"))
  }
  
  static var previews: some View {
    LeftViewAndRightView(leftView: leftView, rightView: rightView)
      .frame(width: 500, height: 200)
  }
}
