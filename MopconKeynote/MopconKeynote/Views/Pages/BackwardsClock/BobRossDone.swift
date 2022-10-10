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
  
  private var image: Image {
    Image("BobRossDone")
  }
  
  var body: some View {
    OneImageWithTitle(title: titleText, image: image)
  }
}

struct BobRossDone_Previews: PreviewProvider {
  static var previews: some View {
    BobRossDone()
      .frame(width: 1440, height: 900)
  }
}
