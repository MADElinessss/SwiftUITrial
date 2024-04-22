//
//  CategoryView.swift
//  SwiftUITrial
//
//  Created by Madeline on 4/22/24.
//

import SwiftUI

struct Character: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let level: Int
    let character: String
}

struct CategoryView: View {
    
    let category = [
        Character(name: "chicken", level: 1, character: "🐓"),
        Character(name: "monkey", level: 2, character: "🙊"),
        Character(name: "sesac", level: 3, character: "🌱")
    ]
    
    @State private var query = ""
    var filterCategory: [Character] {
        return query.isEmpty ? category : category.filter
        { $0.name.contains(query)}
    }
    
    var body: some View {
        List {
            ForEach(filterCategory, id: \.self) { value in
                NavigationLink {
                    //destination
                    SearchDetailView(character: value)
                } label: {
                    HStack {
                        Image(systemName: "pawprint.circle.fill")
                        Text("\(value.character) \(value.name) \(value.level)")
                    }
                }
            }
        }
        .navigationTitle("Characters")
        .searchable(text: $query, placement: .navigationBarDrawer, prompt: "character, name, ...")
    }
}

#Preview {
    CategoryView()
}

struct SearchDetailView: View {
    
    let character: Character
    
    var body: some View {
        Text(character.character)
    }
}
