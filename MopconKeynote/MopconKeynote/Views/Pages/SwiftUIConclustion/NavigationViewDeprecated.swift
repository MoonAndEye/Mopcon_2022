//
//  NavigationViewDeprecated.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/10.
//

import SwiftUI

struct NavigationViewDeprecated: View {
  
  private var titleText: String {
    "今年是 NavigationView 換成 NavigationStack, who's next?"
  }
  
  private var navigationViewDeprecated: AnyView {
    AnyView(
      Image("NavigationViewDeprecate")
        .resizable()
        .aspectRatio(contentMode: .fit)
    )
  }
  
  private var navigationViewMeme: AnyView {
    AnyView(
      Image("NavigationViewDead")
        .resizable()
        .aspectRatio(contentMode: .fit)
    )
  }
  
  var body: some View {
    TwoViewHAlignment(titleText: titleText, view0: navigationViewDeprecated, view1: navigationViewMeme)
  }
}

struct NavigationViewDeprecated_Previews: PreviewProvider {
  static var previews: some View {
    NavigationViewDeprecated()
  }
}
