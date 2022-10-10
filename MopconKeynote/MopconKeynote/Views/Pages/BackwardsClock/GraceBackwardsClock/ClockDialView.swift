//
//  ClockDialView.swift
//  DemoBackwardsClock
//
//  Created by cm0679 on 2022/9/2.
//

import SwiftUI

struct ClockDialView: View {
    
    var body: some View {
        ZStack {
            ArcView()
                .overlay {
                    GeometryReader { geo in
                        
                        let edge = min(geo.size.width, geo.size.height)
                        
                        Group {
                            ClockTicksView(tickLength: 8)
                                .scaleEffect(1.07)
                            BackwardsClockNumbers()
                        }
                        .frame(width: edge, height: edge, alignment: .center)
                    }
                }
            
        }
    }
}

struct ClockDialView_Previews: PreviewProvider {
  
  @State static var dialColor: Color = .green
  
  static var previews: some View {
    ClockDialView()
      .frame(width: 200, height: 200, alignment: .center)
  }
}
