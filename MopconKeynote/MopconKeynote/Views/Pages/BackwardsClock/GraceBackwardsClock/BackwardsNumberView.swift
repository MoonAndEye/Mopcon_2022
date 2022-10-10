//
//  ClockNumberView.swift
//  BackwardsClock
//
//  Created by cm0679 on 2022/5/29.
//

import SwiftUI

/// This is backwards clock, the rotation logic is different than ordinary clock
struct ClockNumberView: View {
    
    var hour: Int
    
    var body: some View {
        
        VStack {
            Text("\(hour)")
                .fontWeight(.black)
                .rotationEffect(.radians((Double.pi * 2 / 12 * Double(hour))))
            Spacer()
        }
        .padding()
        .rotationEffect(.radians(Double.pi * 2 / 12 * -Double(hour)))
    }
}

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
        
        Group {
            ClockNumberView(hour: 1)
                .frame(width: 200, height: 200, alignment: .center)
            BackwardsClockNumbers()
                .frame(width: 200, height: 200, alignment: .center)
        }
        .previewLayout(.sizeThatFits)
    }
}
