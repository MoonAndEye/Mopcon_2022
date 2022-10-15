//
//  OtherDemoApps.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/15.
//

import SwiftUI

struct OtherDemoApps: View {
  
  private var titleText: String {
    "其他沒有 life coding 的 Apps"
  }
  
  private var monkeyView: AnyView {
    
    AnyView(
      ZStack {
        InfiniteMonkeyTypingContentView()
        
      }
        .background(.white)
        .border(.black, width: 5)
        .cornerRadius(8)
    )
  }
  
  private var theseusShipView: AnyView {
    
    AnyView(
      ZStack {
        TheseusShipView()
      }
        .background(.white)
        .border(.black, width: 5)
        .cornerRadius(8)
    )
  }
  
  var body: some View {
    TwoViewHAlignment(titleText: titleText, view0: monkeyView, view1: theseusShipView)
  }
}

struct OtherDemoApps_Previews: PreviewProvider {
  static var previews: some View {
    OtherDemoApps()
      .frame(width: 1440, height: 900)
  }
}
