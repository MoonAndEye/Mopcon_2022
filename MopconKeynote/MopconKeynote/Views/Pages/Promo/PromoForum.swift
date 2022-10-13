//
//  Forum.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/13.
//

import SwiftUI

struct PromoForum: View {
  
  private var titleText: String {
    "股市爆料同學會"
  }
  
  private var image: Image {
    Image("Forum")
  }
  
  var body: some View {
    OneImageWithTitle(title: titleText, image: image)
  }
}

struct Forum_Previews: PreviewProvider {
  static var previews: some View {
    PromoForum()
      .frame(width: 1440, height: 900)
  }
}
