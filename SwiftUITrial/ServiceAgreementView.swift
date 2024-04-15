//
//  ServiceAgreementView.swift
//  SwiftUITrial
//
//  Created by Madeline on 4/16/24.
//

import SwiftUI

struct ServiceAgreementView: View {
    var body: some View {
        VStack {
            Text("포인트를 더 모을 수 있게 맞춤 혜택을\n추천해드릴까요?")
                .font(.system(size: 24, weight: .semibold))
                .frame(alignment: .leading)
                .foregroundStyle(.white)
                .padding(.bottom, 48)
                .padding(.top, 100)
                .frame(minWidth: 0, maxWidth: .infinity)
            HStack {
                Image(systemName: "calendar.badge.checkmark")
                    .foregroundStyle(.blue)
                Text("매일 포인트 받는 출석체크 & 퀴즈")
                    .padding(.leading, 16)
                    .font(.system(size: 16, weight: .regular))
                    .foregroundStyle(.white)
                Spacer()
            }
            .padding(.leading, 24)
            .padding(.bottom, 24)
            HStack {
                Image(systemName: "n.circle.fill")
                    .foregroundStyle(.red)
                    .background(Color.white)
                    .clipShape(.circle)
                Text("새로운 이벤트")
                    .padding(.leading, 16)
                    .font(.system(size: 16, weight: .regular))
                    .foregroundStyle(.white)
                Spacer()
            }
            .padding(.leading, 24)
            .padding(.bottom, 24)
            HStack {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
                Text("미션 추천")
                    .padding(.leading, 16)
                    .font(.system(size: 16, weight: .regular))
                    .foregroundStyle(.white)
                Spacer()
            }
            .padding(.leading, 24)
            .padding(.bottom, 24)
            Spacer()
            HStack {
                Text("[선택] 맞춤형 서비스 이용 동의")
                    .font(.system(size: 15, weight: .regular))
                    .foregroundStyle(.gray)
                Spacer()
            }
            .padding(.leading, 24)
            .padding(.bottom, 24)
            
            Button(action: {
                
            }, label: {
                Text("동의하기")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(.white)
            })
            .frame(width: UIScreen.main.bounds.width * 0.8, height: 54)
            .padding(.horizontal, 24)
            .background(Color.blue)
            .clipShape(.capsule)
            
            Button(action: {
                
            }, label: {
                Text("다음에 하기")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(.white)
            })
            .frame(width: UIScreen.main.bounds.width * 0.8, height: 54)
            .padding(.horizontal, 24)
            .background(Color.gray)
            .clipShape(.capsule)
            .padding(.bottom, 36)
        }
        .ignoresSafeArea()
        .background(Color.black)
    }
}

#Preview {
    ServiceAgreementView()
}
