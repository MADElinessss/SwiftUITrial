//
//  CharacterView.swift
//  SwiftUITrial
//
//  Created by Madeline on 4/23/24.
//

import SwiftUI

let category = [
    Character(name: "chicken", level: 1, character: "🐓"),
    Character(name: "monkey", level: 2, character: "🙊"),
    Character(name: "sesac", level: 3, character: "🌱")
]

struct CharacterView: View {
    
    var body: some View {
        VStack {
            Text("캐릭터 종류")
                .font(.system(size: 18, weight: .bold))
                .padding(.top, 32)
            Spacer()
            HStack(spacing: 32) {
                ForEach(0..<3) { index in
                    Animals(index: index)
                }
            }
            .padding(.bottom, 32)
        }
    }
}

struct Animals: View {
    
    let index: Int
    
    var body: some View {
        VStack {
            Text(category[index].character)
                .font(.system(size: 18, weight: .semibold))
                .padding(.bottom, 8)
            Text(category[index].name)
                .font(.system(size: 14, weight: .medium))
        }
    }
}

#Preview {
    CharacterView()
}
