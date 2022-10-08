//
//  OneImageWithTitle.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/7.
//

import SwiftUI

struct OneImageWithTitle: View {
  
  var title: String
  
  var image: Image
  
  var body: some View {
    
    VStack {
      
      Text(title)
        .font(.system(size: MKFontSize.textTitle))
        .padding()
      image
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(minWidth: 50, minHeight: 50)
        .padding()
    }
  }
}

struct OneImageWithTitle_Previews: PreviewProvider {
  
  static var title: String {
    "this is title"
  }
  
  static var image: Image {
    Image(systemName: "pencil.circle.fill")
  }
  
  static var previews: some View {
    OneImageWithTitle(title: title, image: image)
      .frame(width: 800, height: 600)
  }
}
