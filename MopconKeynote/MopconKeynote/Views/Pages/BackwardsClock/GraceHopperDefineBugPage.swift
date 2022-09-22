//
//  GraceHopperDefineBugPage.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/19.
//

import SwiftUI
/// 葛麗絲．霍普 - bug 的說法
struct GraceHopperDefineBugPage: View {
  var body: some View {
    
    LeftTextAndTwoRightImage(text: text, imageUp: imageUp, imageDown: imageDown)
  }
  
  var text: AnyView {
    
    AnyView(Text(getGraceHopperDefineBugText()))
  }
  
  var imageUp: Image {
    Image("BugStuckInMachine")
  }
  
  var imageDown: Image {
    Image("BugPasteOnBook")
  }
  
  private func getGraceHopperDefineBugText() -> String {
    return "有一天，通用計算機 Mark II 電腦突然停止運作了。葛麗絲的團隊檢查後，發現是一隻飛蛾卡住了開關。\n她將飛蛾貼在紀錄上，「發現一隻真正的 bug」，從此，找錯誤就稱為 debug"
  }
}

struct GraceHopperDefineBugPage_Previews: PreviewProvider {
  static var previews: some View {
    GraceHopperDefineBugPage()
    }
}
