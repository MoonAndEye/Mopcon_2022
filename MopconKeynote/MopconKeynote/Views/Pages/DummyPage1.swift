//
//  DummyPage1.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/18.
//

import SwiftUI

struct DummyPage1: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Text("Page1")
                Spacer()
            }
            Spacer()
        }
        .background(.red)
    }
}

struct DummyPage1_Previews: PreviewProvider {
    static var previews: some View {
        DummyPage1()
    }
}
