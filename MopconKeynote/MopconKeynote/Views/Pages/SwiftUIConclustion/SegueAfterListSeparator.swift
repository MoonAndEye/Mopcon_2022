//
//  SegueAfterListSeparator.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/10/9.
//

import SwiftUI

struct SegueAfterListSeparator: View {
  
  private var contentText: String {
    "除了 List separator\n還有其他不同版本要不同作法的地方嗎?"
  }
  
  var body: some View {
    
    CenterSentence(string: contentText)
  }
}

struct SegueAfterListSeparator_Previews: PreviewProvider {
  static var previews: some View {
    SegueAfterListSeparator()
      .frame(width: 800, height: 600)
  }
}
