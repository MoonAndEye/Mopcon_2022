//
//  DummyPage3.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/18.
//

import SwiftUI

struct DummyPage3: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("Page3")
                Spacer()
            }
            Spacer()
        }
        .background(.purple)
    }
}

struct DummyPage3_Previews: PreviewProvider {
    static var previews: some View {
        DummyPage3()
    }
}
