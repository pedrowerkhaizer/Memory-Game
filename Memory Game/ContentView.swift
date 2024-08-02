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
            CardView()
            CardView(emojiText: "👨🏻‍💻")
            CardView()
            CardView(emojiText: "👨🏻‍💻")
            
        }
        .foregroundColor(.blue)
        .padding()
    }
}

struct CardView: View {
    @State var isFaceUp = false
    var emojiText = "🤠"
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp{
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(emojiText).font(.largeTitle)
            }
            else {
                base
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
