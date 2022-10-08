//
//  DemoListSeparator.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/7.
//

import SwiftUI

struct DemoListSeparator: View {
  
  private var title: String {
    "List 元件預設有 Separator"
  }
  
  private var image: Image {
    Image("ListSeparator")
  }
  
  var body: some View {
    OneImageWithTitle(title: title, image: image)
  }
}

struct DemoListSeparator_Previews: PreviewProvider {
  static var previews: some View {
    DemoListSeparator()
      .frame(width: 800, height: 600)
//      .preferredColorScheme(.light)
  }
}
