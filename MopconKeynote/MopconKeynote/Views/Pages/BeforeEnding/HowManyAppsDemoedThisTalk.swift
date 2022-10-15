//
//  HowManyAppsDemoedThisTalk.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/11.
//

import SwiftUI

struct HowManyAppsDemoedThisTalk: View {
  
  private var titleText: String {
    "請問目前為止，我 Demo 了幾個 SwiftUI Apps?"
  }
  
  var body: some View {
    CenterSentence(string: titleText, horizontalPadding: 8, verticalPadding: 8)
  }
}

struct HowManyAppsDemoedThisTalk_Previews: PreviewProvider {
  static var previews: some View {
    HowManyAppsDemoedThisTalk()
      .frame(width: 1440, height: 900)
  }
}
