//
//  TwoViewHAlignment.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/9.
//

import SwiftUI

struct TwoViewHAlignment: View {
  
  var titleText = ""
  
  var view0: AnyView
  
  var view1: AnyView
  
  var body: some View {
    VStack(alignment: .leading) {
      
      Text(titleText)
        .font(.system(size: MKFontSize.textTitle))
        .fontWeight(.semibold)
        .padding(.leading)
        .padding()
      HStack {
        Group {
          view0
          view1
        }
        .padding()
      }
    }
  }
  
  init(titleText: String, view0: AnyView, view1: AnyView) {
    self.titleText = titleText
    self.view0 = view0
    self.view1 = view1
  }
}

struct TwoViewHAlignment_Previews: PreviewProvider {
  
  static var titleText: String {
    "this is title"
  }
  
  static var view0: AnyView {
    AnyView(
      Rectangle()
      .strokeBorder(.red)
    )
  }
  
  static var view1: AnyView {
    AnyView(
      RoundedRectangle(cornerRadius: 5)
        .fill(.blue)
    )
  }
  
  static var previews: some View {
    TwoViewHAlignment(titleText: titleText, view0: view0, view1: view1)
  }
}
