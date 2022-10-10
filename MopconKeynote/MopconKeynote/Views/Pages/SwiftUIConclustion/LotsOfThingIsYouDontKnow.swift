//
//  LotsOfThingIsYouDontKnow.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/9.
//

import SwiftUI

struct LotsOfThingIsYouDontKnow: View {
  
  private var titleText: String {
    "多的是，你我都不知道的事"
  }
  
  private var image: Image {
    Image("LotsOfThingIsYouDontKnow")
  }
  
  var body: some View {
    OneImageWithTitle(title: titleText, image: image)
  }
}

struct LotsOfThingIsYouDontKnow_Previews: PreviewProvider {
  static var previews: some View {
    LotsOfThingIsYouDontKnow()
  }
}
