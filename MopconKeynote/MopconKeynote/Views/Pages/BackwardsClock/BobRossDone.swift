//
//  BobRossDone.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/10.
//

import SwiftUI

struct BobRossDone: View {
  
  private var titleText: String {
    "完成!你看，很簡單吧"
  }
  
  private var image: AnyView {
    AnyView(
      Image("BobRossDone")
    )
  }
  
  private var clockView: AnyView {
    AnyView(
      VStack {
        Spacer()
        Image("WhiteBackgroundWithBezel")
          .resizable()
          .aspectRatio(contentMode: .fit)
        Spacer()
      }.overlay { GeometryReader
        { geo in
          
          let width = geo.size.width
          let height = geo.size.height
          
          let edge = min(width, height) * 0.8
          
          ClockContainerView()
            .frame(width: edge, height: edge)
            .offset(.init(width: width * 0.1, height: height * 0.5))
          
        }
      }
    )
  }
  
  var body: some View {
      TwoViewHAlignment(titleText: titleText, view0: image, view1: clockView)
  }
}

struct BobRossDone_Previews: PreviewProvider {
  static var previews: some View {
    BobRossDone()
      .frame(width: 1440, height: 900)
  }
}
