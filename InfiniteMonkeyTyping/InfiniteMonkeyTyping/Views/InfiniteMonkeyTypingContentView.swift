//
//  InfiniteMonkeyTypingContentView.swift
//  InfiniteMonkeyTyping
//
//  Created by cm0679 on 2022/7/16.
//

import SwiftUI
import Combine

struct InfiniteMonkeyTypingContentView: View {
    
    @State private var targetText = ""
    
    @State private var currentTargetIndex = 0
    
    private var targetCharacter: String? {
        
        let characters = Array(targetText
                                .replacingOccurrences(of: " ", with: "")
                                .lowercased())
        
        if characters.indices.contains(currentTargetIndex) {
            return String(characters[currentTargetIndex])
        }
        
        return nil
    }
    
    @State private var monkeyTyperCount = 1
    
    @State private var logText = ""
    
    @State private var textStyle = UIFont.TextStyle.body
    
    @State private var typingTimer: AnyCancellable?
    
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
            
            monkeyTyperStepper
            
            monkeyActionButtons
            
            monkeyLogsAndClearLogs
            
            TextView(text: $logText, textStyle: $textStyle)
                .border(Color.blue)
                .padding()
            Spacer()
        }
    }
    
    private var monkeyTyperStepper: some View {
        HStack {
            Stepper("猴子數: \(monkeyTyperCount)") {
                stepperIncrease()
            } onDecrement: {
                stepperDecrease()
            }
        }
        .padding()
    }
    
    private var monkeyActionButtons: some View {
        HStack {
            Button("猴子停手") {
                stopMonkeysTyping()
            }
            
            Button("叫猴子開始打字囉") {
                askMonkeysTyping()
            }
        }
        .buttonStyle(.bordered)
        .padding()
    }
    
    private var monkeyLogsAndClearLogs: some View {
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
    }
    
    private func stepperIncrease() {
        monkeyTyperCount += 1
    }
    
    private func stepperDecrease() {
        if monkeyTyperCount > 1 {
            monkeyTyperCount -= 1
        }
    }

    private func askMonkeysTyping() {
        
        typingTimer = Timer.publish(every: 0.1, on: .main, in: .common)
            .autoconnect()
            .sink { _ in
                
                let typedCharacter = createRandomString()
                IMLogger.log("發動產生文字: \(typedCharacter)")
                updateLog(typedCharacter)
                if match(character: typedCharacter) {
                    updateLog("\n成功比對: \(typedCharacter)\n")
                    currentTargetIndex += 1
                    checkIsFinish()
                }
            }
    }
    
    private func stopMonkeysTyping() {
        
        typingTimer?.cancel()
    }
    
    private func updateLog(_ string: String) {
        logText += string
    }
    
    private func match(character: String) -> Bool {
        
        guard let targetCharacter = targetCharacter else {
            return false
        }
        
        return targetCharacter == character
    }
    
    private func checkIsFinish() {
        
        if targetText.count == currentTargetIndex {
            updateLog("完成比對，猴子自動停手")
            stopMonkeysTyping()
        }
    }
    
    private func clearMonkeyTypeLog() {
        logText = ""
        currentTargetIndex = 0
        targetText = ""
    }
}

extension InfiniteMonkeyTypingContentView {
    
    private var alphabet: [String] {
        let characters = "abcdefghijklmnopqrstuvwxyz"
        var chars: [String] = []
        for char in characters {
            chars.append(String(char))
        }
        return chars
    }
    
    private func createRandomString() -> String {
        
        return alphabet.randomElement() ?? ""
    }
}

struct InfiniteMonkeyTypingContentView_Previews: PreviewProvider {
    static var previews: some View {
        InfiniteMonkeyTypingContentView()
    }
}
