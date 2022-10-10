//
//  NormalTemplate.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/6.
//

import SwiftUI

/// 就像 Keynote 中最常見的模版，上方標題偏大，下方是一行一行內容
struct NormalTemplate: View {
  
  var titleText: String = ""
  
  var contentText: String = ""
  
  var body: some View {
    HStack {
      VStack(alignment: .leading) {
        Text(titleText)
          .font(.system(size: MKFontSize.textTitle))
          .fontWeight(.semibold)
          .padding(.top)
        Text(contentText)
          .multilineTextAlignment(.leading)
          .lineSpacing(20)
          .font(.system(size: MKFontSize.textBody))
          .padding(.top)
          .padding(.trailing, 50)
        Spacer()
      }
      .padding(.leading, 35)
      .padding()
      Spacer()
    }
  }
}

struct NormalTemplate_Previews: PreviewProvider {
  static var previews: some View {
    NormalTemplate(titleText: "This is foo", contentText: "bar1\nbar2\nbarbarbar3\nbar4")
      .frame(width: 800, height: 600)
  }
}
