//
//  AlbumView.swift
//  SwiftUITrial
//
//  Created by Madeline on 4/22/24.
//

import SwiftUI

struct AlbumView: View {
    
    let url = URL(string: "https://picsum.photos/200")
    
    var posterImage: some View {
        AsyncImage(url: url)
    }
    
    var sectionView: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(0..<6) { _ in
                    posterImage
                }
            }
        }
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(0..<3) { index in
                        Text("\(index+1)번 앨범🐣")
                        sectionView
                    }
                }
                .padding()
            }
            .navigationTitle("Damagochi Album")
        }
    }
}

#Preview {
    AlbumView()
}
