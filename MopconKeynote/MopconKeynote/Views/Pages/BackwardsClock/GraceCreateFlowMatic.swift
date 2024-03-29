//
//  GraceFlowMatic.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/20.
//

import SwiftUI

struct GraceCreateFlowMatic: View {
  
  var body: some View {
    LeftTextAndRightImage(text: text, image: image)
  }
  
  var image: Image {
    Image("UsingEnglishWritingCode")
  }
  
  var text: AnyView {
    AnyView(
      VStack(alignment: .leading) {
        Group {
          Text("那時候寫程式，是人類寫出電腦可理解的語言，全都是01組成的編碼，很容易出錯")
          Text("葛麗絲提出開發高級程式語言的想法。讓電腦去理解人類的語言")
          Text("這個程式叫做「FLOW-MATIC」")
          Text("葛麗絲有 COBOL 之母的稱號")
        }
        .minimumScaleFactor(0.4)
        .padding()
      }
        .font(.system(size: MKFontSize.textBody))
        .lineSpacing(10)
        
    )
  }
  
//  private func getGraceHopperFlowMaticText() -> String {
//    return "那時候寫程式，是人類寫出電腦可理解的語言，全都是0、1組成的編碼，很容易出錯。葛麗絲提出開發高級程式語言的想法。讓電腦去理解人類的語言\n後來創造了現代第一個編譯器 A-0 系統，以及商用電腦程式語言「COBOL」\n被譽為 COBOL 之母"
//  }
}

struct GraceFlowMatic_Previews: PreviewProvider {
  static var previews: some View {
    GraceCreateFlowMatic()
      .frame(width: 1440, height: 900)
  }
}
