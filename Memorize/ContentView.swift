//
//  ContentView.swift
//  Memorize
//
//  Created by soseoyo_12 on 6/27/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView(isFaceUp: true)
            CardView()
        }
        .padding()
    }
}



struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View {
        ZStack {
            if isFaceUp {
                
                RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(.white)
                RoundedRectangle(cornerRadius: 12)
                    .stroke(style: StrokeStyle(lineWidth: 3))
                    .foregroundStyle(Color.blue)
                Text("🔥")
                    .font(.system(size: 30))
            } else {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(.blue)
            }
        }
    }
}








#Preview {
    ContentView()
}
