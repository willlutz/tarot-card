//
//  ContentView.swift
//  tarot card
//
//  Created by will lutz on 12/14/23.
//

import SwiftUI

struct ContentView: View {
    @State private var randomValue = 0
    @State private var rotation = 0
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Image("craystalball")
                    Text("TAROT READING")
                        .font(Font.custom( "bold", size: 36))
                        .font(.system(size: 72))
                    HStack {
                        Image("card \(randomValue)")
                            .resizable()
                            .frame(width: 300, height: 400, alignment: .center)
                            .padding ()
                            .rotationEffect(.degrees(Double(rotation)))
                            .rotation3DEffect(.degrees(Double(rotation)), axis: (x: 1, y: 1, z: 0))
                            .onTapGesture {
                                randomValue = Int.random(in: 1...4) // change # to change cards
                                withAnimation(.default) {
                                    rotation += 360
                                }
                            }
                    }
                    NavigationLink("Card Meaning", destination: Meanings())
                }
            }
        }
        .padding()
        .navigationTitle("Drawing")
        .navigationBarHidden(true)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

