//
//  InputTextDemo.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/19.
//

import SwiftUI

struct InputTextDemo: View {
  
  @State var bookTitle: String = ""
  
  var text: String {
    if bookTitle.isEmpty {
      return "No input, please type something in textField"
    }
    
    return "Your title: \(bookTitle)"
  }
  
  var body: some View {
    
    VStack {
      Text("This is Title")
      Text(text)
        .padding()
      TextField("Please enter your text", text: $bookTitle)
        .padding()
    }
    .foregroundColor(.black)
    .font(.title)
  }
}

struct InputTextDemo_Previews: PreviewProvider {
  static var previews: some View {
    InputTextDemo()
      .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
  }
}
