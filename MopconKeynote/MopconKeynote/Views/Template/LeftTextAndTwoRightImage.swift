//
//  LeftTextAndTwoRightImage.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/20.
//

import SwiftUI

struct LeftTextAndTwoRightImage: View {
  var text: AnyView
  
  var imageUp: Image
  
  var imageDown: Image
  
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
        
        VStack {
          
          Group {
            imageUp
              .resizable()
              .scaledToFit()
            imageDown
              .resizable()
              .scaledToFit()
          }
          .frame(minHeight: 0, maxHeight: .infinity)
        }
        
      }
      .frame(minWidth: 0, maxWidth: .infinity)
    }
  }
  
  init(text: AnyView, imageUp: Image, imageDown: Image) {
    self.text = text
    self.imageUp = imageUp
    self.imageDown = imageDown
  }
}

struct LeftTextAndTwoRightImage_Previews: PreviewProvider {
  
  static var text: AnyView = {
    AnyView(Text("Foo"))
  }()
  
  static var image: Image = {
    Image(systemName: "person.fill")
  }()
  
  static var previews: some View {
    LeftTextAndTwoRightImage(text: text, imageUp: image, imageDown: image)
  }
}
