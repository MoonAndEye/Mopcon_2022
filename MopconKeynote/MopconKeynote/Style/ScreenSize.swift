//
//  ScreenSize.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/19.
//

import SwiftUI

class ScreenSize: ObservableObject {
  
  static let shared = ScreenSize()
  
  private init() {}
  
  @Published var width: CGFloat = NSScreen.main?.visibleFrame.size.width ?? 0
  
  @Published var height: CGFloat = NSScreen.main?.visibleFrame.size.height ?? 0
}
