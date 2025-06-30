//
//  ContentView.swift
//  Memorize
//
//  Created by soseoyo_12 on 6/27/25.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["😈","🎃","👻","🕷️","👹"]
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self){ index in
                CardView(content: emojis[index])
            }
        }
        .padding()
    }
}



struct CardView: View {
    let content : String
    @State var isFaceUp = false
    
    var body: some View {
        ZStack {
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                    base.foregroundStyle(.white)
                    base.stroke(style: StrokeStyle(lineWidth: 3)).foregroundStyle(Color.blue)
                Text(content)
                    .font(.system(size: 30))
            } else {
                        base.foregroundStyle(.blue)
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
