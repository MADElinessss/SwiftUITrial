//
//  AlbumView.swift
//  SwiftUITrial
//
//  Created by Madeline on 4/22/24.
//

import SwiftUI

struct AlbumView: View {
    
    @State private var isExpandable = false
    
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
                VStack {
                    HStack {
                        topTitle()
                            .background(.orange)
                        Spacer()
                        Toggle(isOn: $isExpandable) {
                            Text("✈️")
                        }
                        .frame(width: 100)
                        
                    }
                    
                    VStack(alignment: .leading) {
                        ForEach(0..<3) { index in
                            Text("\(index+1)번 앨범🐣")
                            sectionView
                                
                        }
                    }
                    .opacity(isExpandable ? 1.0 : 0.0)
                    .padding()
                    
                }
            }
        }
    }
    
    func topTitle() -> some View {
        Text("Damagochi Album")
            .font(.largeTitle)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity, alignment: isExpandable ? .leading : .center)
            .padding()
    }
}

#Preview {
    AlbumView()
}
