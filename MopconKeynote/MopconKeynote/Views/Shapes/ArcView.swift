//
//  ArcView.swift
//  BackwardsClock
//
//  Created by cm0679 on 2022/5/29.
//

import SwiftUI

// inspired from Phan Viết Trung
//https://medium.com/dwarves-foundation/draw-watch-face-using-swiftui-a863ad347b2c
struct Arc: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        var p = Path()
        let radius = min(rect.width / 2, rect.height / 2)
        let center = CGPoint(x: rect.midX, y: radius)
        
        p.addArc(center: center, radius: radius, startAngle: Angle(radians: 0), endAngle: Angle(radians: .pi * 2), clockwise: true)
        return p
    }
}

struct ArcView: View {
    
    var lineWidth: CGFloat = 3
    
    var body: some View {
        Arc()
            .stroke(lineWidth: lineWidth)
    }
}

struct ArcView_Previews: PreviewProvider {
    static var previews: some View {
        ArcView()
    }
}
