//
//  ContentView.swift
//  Memory Game
//
//  Created by Pedro Werkhaizer on 01/08/24.
//

import SwiftUI

struct ContentView: View {
    let emojis: Array<String> = ["👻", "🎃", "🕷️", "😈"]
    // let emojis: [Sring] = [] is another option

    var body: some View {
        HStack() {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.blue)
        .padding()
    }
}

struct CardView: View {
    @State var isFaceUp = true
    var content: String
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp{
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            else {
                base
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
            // https://www.youtube.com/watch?v=sXiD-2XrkKQ
            // 28:10
        }
    }
}

#Preview {
    ContentView()
}
