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
  
  var topPadding: CGFloat = 0
  
  var leadingPadding: CGFloat = 40
  
  var trailingPadding: CGFloat = 40
  
  var body: some View {
    HStack(alignment: .top) {
      
      Group {
        VStack {
          Spacer()
          text
            .font(.system(size: textFont))
            .lineSpacing(20)
            .padding(.top, topPadding)
            .padding(.leading, leadingPadding)
            .padding(.trailing, trailingPadding)
          Spacer()
        }
        
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
  
  init(text: AnyView, imageUp: Image, imageDown: Image, topPadding: CGFloat = 0, leadingPadding: CGFloat = 40, trailingPadding: CGFloat = 40) {
    self.text = text
    self.imageUp = imageUp
    self.imageDown = imageDown
    
    self.topPadding = topPadding
    self.leadingPadding = leadingPadding
    self.trailingPadding = trailingPadding
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
