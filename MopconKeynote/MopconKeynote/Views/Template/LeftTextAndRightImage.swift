//
//  LeftTextAndRightImage.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/20.
//

import SwiftUI

struct LeftTextAndRightImage: View {
  
  var textView: AnyView
  
  var image: Image
  
  var textFont: CGFloat = MKFontSize.textBody
  
  @State var topPadding: CGFloat = 0
  
  var leadPadding: CGFloat = 40
  
  var trailingPadding: CGFloat = 40
  
  var body: some View {
    HStack(alignment: .top) {
      
      Group {
        VStack {
          Spacer()
          textView
            .font(.system(size: textFont))
            .lineSpacing(20)
            .padding(.top, topPadding)
            .padding(.leading, leadPadding)
            .padding(.trailing, trailingPadding)
          Spacer()
        }
        
        VStack {
          Spacer()
          image
            .resizable()
            .scaledToFit()
          Spacer()
        }
      }
      .frame(minWidth: 0, maxWidth: .infinity)
    }
  }
  
  init(text: AnyView, image: Image) {
    self.textView = text
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
