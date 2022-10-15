//
//  ShipView.swift
//  ShipOfTheseus
//
//  Created by cm0679 on 2022/9/28.
//

import SwiftUI
import Combine

struct TheseusShipView: View {
  
  private var upShipColor: Color {
    Color(white: 0, opacity: opacity)
  }
  
  @State private var opacity: Double = 1
  
  @State private var yearsPastInASecond: Int = 1
  
  private let yearsNeedsToComplete: Int = 1000
  
  private let yearPast = 0
  
  private let timer = Timer.publish(every: 1, on: .main, in: .default, options: .none).autoconnect()
  
  private var downShipColor: Color {
    Color(red: 1.0, green: 0, blue: 0, opacity: 1 - opacity)
  }
  
  private var progressString: String {
    "材料更換程度: \(percentageString) %"
  }
  
  private var percentageString: String {
    let opacityDouble = opacity * 100
    return String(format: "%.1f", opacityDouble)
  }
  
  var body: some View {
    
    VStack {
      
      Text("忒修斯之船\nShip of Theseus")
        .font(.largeTitle)
        .minimumScaleFactor(0.4)
        .multilineTextAlignment(.center)
        .padding()
      
      Text(progressString)
        .font(.title2)
        .padding()
      
      ZStack {
        upShipImage
        downShipImage
      }
      
      Slider(
        value: $opacity,
        in: 0.0...1.0,
        step: 0.1
      )
        .padding()
    }
    .onReceive(timer) { _ in
      
    }
  }
  
  private var upShipImage: some View {
    Image(systemName: "ferry.fill")
      .renderingMode(.template)
      .foregroundColor(upShipColor)
      .font(.system(size: 200))
  }
  
  private var downShipImage: some View {
    Image(systemName: "ferry.fill")
      .renderingMode(.template)
      .foregroundColor(downShipColor)
      .font(.system(size: 200))
  }
  
}

struct ShipView_Previews: PreviewProvider {
  static var previews: some View {
    TheseusShipView()
  }
}
