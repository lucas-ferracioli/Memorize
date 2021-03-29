//
//  ContentView.swift
//  Memorize
//
//  Created by Lucas Ferracioli on 29/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { _ in
                CardView(isFaceUp: false)
            }
        }
        .padding()
        .foregroundColor(.orange)
        .font(.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    let roundedRectangle = RoundedRectangle(cornerRadius: 10.0)
    
    var body: some View {
        ZStack {
            if isFaceUp {
                roundedRectangle
                    .fill(Color.white)
                roundedRectangle
                    .stroke(lineWidth: 3.0)
                Text("👻")
            } else {
                roundedRectangle
                    .fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
