//
//  CenterSentence.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/22.
//

import SwiftUI

struct CenterSentence: View {
  
  var string: String = ""
  
  var horizontalPadding: CGFloat = 8
  var verticalPadding: CGFloat = 8
  
  var body: some View {
    VStack {
      Spacer()
      Text(string)
        .font(.system(size: MKFontSize.centerSentence))
        .lineSpacing(20)
        .multilineTextAlignment(.center)
        .padding(.vertical, verticalPadding)
        .padding(.horizontal, horizontalPadding)
      Spacer()
    }
  }
}

struct CenterSentence_Previews: PreviewProvider {
    static var previews: some View {
      CenterSentence(string: "This is center sentence")
    }
}
