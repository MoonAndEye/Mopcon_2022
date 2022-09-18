//
//  DummyPage2.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/18.
//

import SwiftUI

struct DummyPage2: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("Page2")
                Spacer()
            }
            Spacer()
        }
        .background(.blue)
    }
}

struct DummyPage2_Previews: PreviewProvider {
    static var previews: some View {
        DummyPage2()
    }
}
