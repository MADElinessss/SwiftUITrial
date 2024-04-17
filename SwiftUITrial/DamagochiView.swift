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
    
    var body: some View {
        VStack {
            Button("방실방실 다마고치") {
                // 다마고치 버튼
            }
            .frame(width: 150, height: 44)
            .foregroundColor(.black)
            .clipShape(RoundedRectangle(cornerRadius: 22))
            .overlay(
                RoundedRectangle(cornerRadius: 22)
                    .stroke(Color.black, lineWidth: 1)
            )
            .padding(.bottom, 16)
            
            Text("LV\(level) • 밥알 \(rice)개 • 물방울 \(water)개")
                .font(.system(size: 16, weight: .semibold))
                .padding(.bottom, 36)
            
            HStack {
                TextField("밥주세용", text: $inputRice)
                    .keyboardType(.numberPad)
                Button("🍚 밥 먹기") {
                    if let newRice = Int(inputRice) {
                        rice += newRice
                        inputRice = ""  // 입력 필드 초기화
                    }
                }
            }
            
            HStack {
                TextField("물주세용", text: $inputWater)
                    .keyboardType(.numberPad)
                Button("💧 물 먹기") {
                    if let newWater = Int(inputWater) {
                        water += newWater
                        inputWater = ""
                    }
                }
            }
        }
    }
}

#Preview {
    DamagochiView()
}
