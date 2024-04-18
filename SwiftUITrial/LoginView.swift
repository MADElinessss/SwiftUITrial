//
//  LoginView.swift
//  SwiftUITrial
//
//  Created by Madeline on 4/19/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var type: String = ""
    @Binding var content: String
    @State private var isPresented: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            Text("🥚🐣🐥다마고치🥚🐣🐥")
                .font(.system(size: 24, weight: .heavy))
                .padding(.bottom, 48)
            LoginCell(type: "이메일", content: content)
                .frame(height: 44)
            LoginCell(type: "비밃번호", content: content)
                .frame(height: 44)
            LoginCell(type: "닉네임", content: content)
                .frame(height: 44)
            LoginCell(type: "생일", content: content)
                .frame(height: 44)
            Spacer()
            Button("시작하기") {
                isPresented.toggle()
            }
            .frame(width: 300, height: 44)
            .foregroundStyle(.white)
            .background(Color.orange)
            .clipShape(.capsule)
            .padding(.bottom, 24)
        }
        .fullScreenCover(isPresented: $isPresented, content: {
            DamagochiView()
        })
    }
}

#Preview {
    let content = Binding<String>.constant("")
    return LoginView(content: content)
}

struct LoginCell: View {
    
    var type: String
    @State var content: String
    
    var body: some View {
        HStack {
            Text("\(type): ")
            TextField("\(type)을 입력하세요.", text: $content)
                .textFieldStyle(.roundedBorder)
                .frame(width: 200, height: 100)
        }
    }
}
