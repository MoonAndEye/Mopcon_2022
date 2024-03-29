//
//  LeftTextAndRightImageWithTitle.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/7.
//

import SwiftUI

struct LeftTextAndRightImageWithTitle: View {
  
  var title: String
  
  var textView: AnyView
  
  var image: Image
  
  var textFont: CGFloat = MKFontSize.textBody
  
  @State var topPadding: CGFloat = 0
  
  var leadPadding: CGFloat = 40
  
  var trailingPadding: CGFloat = 40
  
  var body: some View {
    
    VStack {
      
      Text(title)
        .font(.system(size: MKFontSize.textTitle))
        .fontWeight(.semibold)
        .padding()
      
      HStack(alignment: .top) {
        
        Group {
          VStack {
            Spacer()
            textView
              .font(.system(size: MKFontSize.textBody))
              .lineSpacing(20)
              .padding(.top, topPadding)
              .padding(.leading, leadPadding)
              .padding(.trailing, trailingPadding)
            Spacer()
          }
          
          image
            .resizable()
            .scaledToFit()
        }
        .frame(minWidth: 0, maxWidth: .infinity)
      }
    }
  }
  
  init(title: String, textView: AnyView, image: Image) {
    self.title = title
    self.textView = textView
    self.image = image
  }
}

struct LeftTextAndRightImageWithTitle_Previews: PreviewProvider {
  
  static var title: String {
    "This is title"
  }
  
  static var textView: AnyView = {
    AnyView(Text("Foo"))
  }()
  
  static var image: Image = {
    Image(systemName: "person.fill")
  }()
  
  static var previews: some View {
    LeftTextAndRightImageWithTitle(title: title, textView: textView, image: image)
      .frame(width: 800, height: 600)
  }
}
