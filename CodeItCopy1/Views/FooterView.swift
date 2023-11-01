//
//  FooterView.swift
//  CodeItCopy1
//
//  Created by hyunkyu yoon on 2023/10/30.
//

import SwiftUI

struct FooterView: View {
  
  @State private var isAlertPresented = false
  var email = "unionkyu@gmail.com"
  
    var body: some View {
      
        VStack {
          Capsule()
            .foregroundColor(.gray)
            .frame(height: 1)
          ZStack {
            Rectangle()
              .frame(width: 390, height: 240)
              .foregroundColor(.white)
              .shadow(radius: 1, x: 1, y:1)
            
            VStack(spacing: 8) {
              Spacer()
              
              HStack {
                Link("코드잇 소개", destination: URL(string: "https://careers.codeit.com/")!)
                Link("멤버십 소개", destination: URL(string: "https://www.codeit.kr/subscription")!)
                Link("부트캠프", destination: URL(string: "https://sprint.codeit.kr/")!)
                Link("기업 교육 소개", destination: URL(string: "https://www.codeit.kr/teams")!)
                Text("사용자 이용 약관")
                                  
                Text("개인정보 처리 방침")
              }
              .modifier(FooterTextStyle())
              
              
              HStack {
                Link("자주 묻는 질문", destination: URL(string: "https://www.codeit.kr/faq")!)
                Text("문의 하기")
              }
              .modifier(FooterTextStyle())
              .padding(.bottom, 20)
              
              VStack(alignment: .center, spacing: 6) {
                Text("(주) 코드잉? | 대표 Unionkyu 윤현규")
                Text("| 개인정보보호책임자 윤현규 | 대표 번호 02-0000-0000")
                Text("| 이메일 \(email) | 사업자 번호 000-00-00000")
                Text("| 통신판매업 제 2023-서울중구-0000호")
                Text("| 주소 서울특별시 코딩이 하고플때 코드잉?")
              }
              .font(.system(size: 13, weight: .light))
              .foregroundColor(.gray)
              Spacer()
            }
            .frame(width: 390, height: 240)
          
            
          }
        }
        
      
    }
}

struct FooterTextStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 10, weight: .medium))
            .foregroundColor(.black)
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}

struct PopupView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Color.black.opacity(0.5).ignoresSafeArea()
            VStack {
                Text("Popup Content")
                Button("Close") {
                    presentationMode.wrappedValue.dismiss()
                }
            }
            .frame(width: 300, height: 200)
            .background(Color.white)
            .cornerRadius(10)
        }
    }
}
