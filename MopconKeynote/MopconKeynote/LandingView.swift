//
//  LandingView.swift
//  MopconKeynote
//
//  Created by cm0679 on 2022/9/18.
//

import SwiftUI

struct LandingView: View {
    
    private var frameWidth: CGFloat {
        return 50
    }
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            pageSwitchView
            
            Text("Note Page area")
            
            Spacer()
        }
    }
    
    private var pageSwitchView: some View {
        
        HStack {
            
            Button {
                print("go to previous page")
            } label: {
                Image(systemName: "arrow.left")
                    .frame(minWidth: frameWidth)
            }
            

            Button {
                print("go to next page")
            } label: {
                Image(systemName: "arrow.right")
                    .frame(minWidth: frameWidth)
            }
            
            Spacer()
        }
        .padding([.top, .leading])
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
            .frame(width: 650, height: 450)
            .preferredColorScheme(.light)
    }
}
