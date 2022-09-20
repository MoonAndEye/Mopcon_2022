//
//  LeftTextAndRightImage.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/20.
//

import SwiftUI

struct LeftTextAndRightImage: View {
  
  var text: AnyView
  
  var image: Image
  
  var textFont: CGFloat = MKFontSize.textBody
  
  var topPadding: CGFloat = 20
  
  var leadPadding: CGFloat = 20
  
  var trailingPadding: CGFloat = 20
  
  var body: some View {
    HStack(alignment: .top) {
      
      Group {
        
        text
          .font(.system(size: textFont))
          .padding(.top, topPadding)
          .padding(.leading, leadPadding)
          .padding(.trailing, trailingPadding)
        
        image
          .resizable()
          .scaledToFit()
      }
      .frame(minWidth: 0, maxWidth: .infinity)
    }
  }
  
  init(text: AnyView, image: Image) {
    self.text = text
    self.image = image
  }
}

struct LeftTextAndRightImage_Previews: PreviewProvider {
  
  static var text: AnyView = {
    AnyView(Text("Foo"))
  }()
  
  static var image: Image = {
    Image(systemName: "person.fill")
  }()
  
  static var previews: some View {
    LeftTextAndRightImage(text: text, image: image)
  }
}
