//
//  ThreeViewHAlignment.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/8.
//

import SwiftUI

struct ThreeViewHAlignment: View {
  
  var titleText = ""
  
  var view0: AnyView
  
  var view1: AnyView
  
  var view2: AnyView
  
  var body: some View {
    
    VStack(alignment: .leading) {
      
      Text(titleText)
        .font(.system(size: MKFontSize.textTitle))
        .padding(.leading)
        .padding()
      HStack {
        Group {
          view0
          view1
          view2
        }
        .padding()
      }
    }
  }
  
  init(titleText: String, view0: AnyView, view1: AnyView, view2: AnyView) {
    self.titleText = titleText
    self.view0 = view0
    self.view1 = view1
    self.view2 = view2
  }
}

struct ThreeViewHAlignment_Previews: PreviewProvider {
  
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
  
  static var view2: AnyView {
    AnyView(
      Rectangle()
        .fill(.green)
    )
  }
  
  static var previews: some View {
    ThreeViewHAlignment(titleText: titleText, view0: view0, view1: view1, view2: view2)
      .frame(width: 800, height: 600)
  }
}
