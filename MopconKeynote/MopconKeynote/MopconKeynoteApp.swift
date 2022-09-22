//
//  MopconKeynoteApp.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/16.
//

import SwiftUI

@main
struct MopconKeynoteApp: App {
    var body: some Scene {
        WindowGroup {
            KeynoteView()
                .frame(minWidth: 1000, idealWidth: .infinity, maxWidth: .infinity, minHeight: 800, idealHeight: .infinity, maxHeight: .infinity, alignment: .center)
        }
    }
}
