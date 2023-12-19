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
                Color.red.opacity(0.4).ignoresSafeArea()
                VStack {
                    Text("TAROT READING")
                        .font(Font.custom( "bold", size: 36))
                        .font(.system(size: 72))
                    Spacer()
                
                
                HStack {
                    Image("card \(randomValue)")
                        .resizable()
                        .frame(width: 75, height: 100, alignment: .center)
                        .padding ()
                        .rotationEffect(.degrees(Double(rotation)))
                        .rotation3DEffect(.degrees(Double(rotation)), axis: (x: 1, y: 1, z: 0))
                        .onTapGesture {
                            randomValue = Int.random(in: 1...2) // change # to change cards
                            withAnimation(.default) {
                                rotation += 360
                            }
                            
                        }
                    Image("card \(randomValue)")
                        .resizable()
                        .frame(width: 75, height: 100, alignment: .center)
                        .padding ()
                        .rotationEffect(.degrees(Double(rotation)))
                        .rotation3DEffect(.degrees(Double(rotation)), axis: (x: 1, y: 1, z: 0))
                        .onTapGesture {
                            randomValue = Int.random(in: 1...2) // change # to change cards
                            withAnimation(.default) {
                                rotation += 360
                            }
                        }
                    Image("card \(randomValue)")
                        .resizable()
                        .frame(width: 75, height: 100, alignment: .center)
                        .padding ()
                        .rotationEffect(.degrees(Double(rotation)))
                        .rotation3DEffect(.degrees(Double(rotation)), axis: (x: 1, y: 1, z: 0))
                        .onTapGesture {
                            randomValue = Int.random(in: 1...2) // change # to change cards
                            withAnimation(.default) {
                                rotation += 360
                            }
                        }
                    
                }
                Spacer()
                
                NavigationLink("Card Meaning", destination: Meanings())
            }}
        }
        Spacer()
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

struct InstructionsView: View {
    var body: some View {
        ZStack {
            Color.gray.opacity(0.7).ignoresSafeArea ()
            VStack {
                Image ("").resizable().frame (width: 150, height: 150)
                Text ("Tarot").font(.title)
                VStack (alignment: .leading) {
                    
                }
                Spacer()
            }
        }
    }
}
