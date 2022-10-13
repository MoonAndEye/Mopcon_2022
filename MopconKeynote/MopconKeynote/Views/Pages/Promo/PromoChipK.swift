//
//  PromoChipK.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/13.
//

import SwiftUI

struct PromoChipK: View {
  
  private var titleText: String {
    "籌碼K線"
  }
  
  private var image: Image {
    Image("Chipk")
  }
  
  var body: some View {
    OneImageWithTitle(title: titleText, image: image)
  }
}

struct PromoChipK_Previews: PreviewProvider {
  static var previews: some View {
    PromoChipK()
      .frame(width: 1440, height: 900)
  }
}
