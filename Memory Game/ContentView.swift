//
//  ContentView.swift
//  Memory Game
//
//  Created by Pedro Werkhaizer on 01/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack() {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView(isFaceUp: true, emojiText: "👨🏻‍💻")
            
        }
        .foregroundColor(.blue)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    var emojiText: String = "🤠"
    
    var body: some View {
        ZStack() {
            if isFaceUp{
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text(emojiText).font(.largeTitle)
            }
            else {
                RoundedRectangle(cornerRadius: 12)
            }
        }
    }
}

#Preview {
    ContentView()
}
