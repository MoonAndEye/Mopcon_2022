//
//  InfiniteMonkeyTypingContentView.swift
//  InfiniteMonkeyTyping
//
//  Created by cm0679 on 2022/7/16.
//

import SwiftUI

struct InfiniteMonkeyTypingContentView: View {
    
    @State private var targetText = ""
    
    @State private var monkeyTyperCount = 1
    
    @State private var logText = ""
    
    @State private var textStyle = UIFont.TextStyle.body
    
    private var targetHint: String {
        if targetText.isEmpty {
            return "目前沒目標，請輸入目標文字在輸入框"
        }
        return "你的目標為: \(targetText)"
    }
    
    var body: some View {
        
        VStack {
            Text("無限猴子打字機")
                .font(.largeTitle)
                .padding(.top, 20)
            
            Text(targetHint)
                .lineLimit(1)
                .padding()
            
            TextField("請輸入目標", text: $targetText)
                .padding()
                .textFieldStyle(.roundedBorder)
            
            createMonkeyTyperStepper()
            
            Button("叫猴子開始打字囉") {
                askMonkeysTyping()
            }
            .buttonStyle(.bordered)
            .padding()
            
            HStack {
                Spacer()
                Text("猴子的打字紀錄")
                Button {
                    clearMonkeyTypeLog()
                } label: {
                    Text("清除打字紀錄")
                }
                .padding(.leading, 20)
                .buttonStyle(.bordered)
                Spacer()
            }
            
            TextView(text: $logText, textStyle: $textStyle)
                .border(Color.blue)
                .padding()
            Spacer()
        }
    }
    
    @ViewBuilder
    private func createMonkeyTyperStepper() -> some View {
        HStack {
            Stepper("猴子數: \(monkeyTyperCount)") {
                stepperIncrease()
            } onDecrement: {
                stepperDecrease()
            }
        }
        .padding()
    }
}
// MARK: - Logic part
extension InfiniteMonkeyTypingContentView {
    private func stepperIncrease() {
        monkeyTyperCount += 1
    }
    
    private func stepperDecrease() {
        if monkeyTyperCount > 1 {
            monkeyTyperCount -= 1
        }
    }
    
    private func askMonkeysTyping() {
        // TODO: 叫現在所有的猴子開始打字
    }
    
    private func stopMonkeysTyping() {
        // TODO: 讓猴子停手
    }
    
    private func clearMonkeyTypeLog() {
        logText = ""
    }
}

struct InfiniteMonkeyTypingContentView_Previews: PreviewProvider {
    static var previews: some View {
        InfiniteMonkeyTypingContentView()
    }
}
