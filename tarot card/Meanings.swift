//
//  meanings.swift
//  tarot card
//
//  Created by will lutz on 12/15/23.
//

import SwiftUI

struct Meanings: View {
    var body: some View {
        ZStack{
            
            
            VStack{
               Text("Card Meanings")
                    .font(Font.custom( "bold", size: 36))
                    .font(.system(size: 72))
                    .padding()
                Text("01 The Fool")
    
                Text("Beginnings,innocence,spontaneity, a free spirit")
                
                Text("12 The Hanged Man")
                Text("Pause, surrender, letting go, new perspectives")
                Text("13 Death")
                Text("Endings, change, transformation, transition")
                Text("18 The Moon")
                Text("Illusion, fear, anxiety, subconscious, intuition")
                Spacer()
            }}
        }
    struct Meanings_Previews: PreviewProvider {
        static var previews: some View {
            Meanings()
        }
    }
}
