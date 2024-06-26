//
//  DamagochiView.swift
//  SwiftUITrial
//
//  Created by Madeline on 4/17/24.
//

import SwiftUI

struct DamagochiView: View {
    
    @State var level: Int = 1
    @State var rice: Int = 0
    @State var water: Int = 0
    @State var inputRice: String = ""
    @State var inputWater: String = ""
    @State var tag:Int? = nil
    @State private var showSheet: Bool = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    NavigationLink(destination: CategoryView(), tag: 1, selection: self.$tag ) {
                        EmptyView()
                    }
                    
                    Button("방실방실 다마고치") {
                        // 다마고치 버튼
                        self.tag = 1
                        rice = 0
                        water = 0
                        inputRice = ""
                        inputWater = ""
                    }
                    .frame(width: 150, height: 44)
                    .foregroundColor(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 22))
                    .overlay(
                        RoundedRectangle(cornerRadius: 22)
                            .stroke(Color.black, lineWidth: 1)
                    )
                }
                .padding(.bottom, 16)
                
                Text("LV\(level) • 밥알 \(rice)개 • 물방울 \(water)개")
                    .font(.system(size: 16, weight: .semibold))
                    .padding(.bottom, 36)
                
                
                Damagochi(level: $level)
                    .onTapGesture {
                        self.showSheet.toggle()
                    }
                
                HStack {
                    TextField("밥주세용", text: $inputRice)
                        .keyboardType(.numberPad)
                        .frame(width: 100, height: 44)
                    Button("🍚 밥 먹기") {
                        if let newRice = Int(inputRice) {
                            rice += newRice
                            inputRice = ""
                            if rice >= 50 {
                                level += 1
                                rice = rice % 50
                            }
                        }
                    }
                }
                
                HStack {
                    TextField("물주세용", text: $inputWater)
                        .keyboardType(.numberPad)
                        .frame(width: 100, height: 44)
                    Button("💧 물 먹기") {
                        if let newWater = Int(inputWater) {
                            water += newWater
                            inputWater = ""
                        }
                    }
                }
            }
            .sheet(isPresented: $showSheet, content: {
                CharacterView()
                    .presentationDetents([.height(200)])
                    .presentationDragIndicator(.visible)
            })
            .navigationBar {
                Button {
                    // action
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                }
                
            } trailing: {
                
                NavigationLink(destination: AlbumView()) {
                    Image(systemName: "photo.artframe")
                }
                
            }

        }
    }
}

#Preview {
    DamagochiView()
}

struct Damagochi: View {
    @Binding var level: Int
    var body: some View {
        ZStack {
            if level >= 3 {
                Text("🐥")
                    .font(.system(size: 200))
            } else if level >= 2 {
                Text("🐣")
                    .font(.system(size: 200))
            } else {
                Text("🥚")
                    .font(.system(size: 200))
            }
        }
    }
}
