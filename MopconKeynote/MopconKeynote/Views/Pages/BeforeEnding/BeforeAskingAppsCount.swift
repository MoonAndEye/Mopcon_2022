//
//  BeforeAskingAppsCount.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/13.
//

import SwiftUI

struct BeforeAskingAppsCount: View {
  
  private var titleText: String {
    "接下來問一個問題"
  }
  
  var body: some View {
    CenterSentence(string: titleText, horizontalPadding: 8, verticalPadding: 8)
  }
}

struct BeforeAskingAppsCount_Previews: PreviewProvider {
  static var previews: some View {
    BeforeAskingAppsCount()
  }
}
