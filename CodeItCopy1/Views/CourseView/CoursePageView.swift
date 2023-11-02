//
//  CoursePage.swift
//  CodeItCopy1
//
//  Created by hyunkyu yoon on 2023/11/01.
//

import SwiftUI

struct CoursePageView: View {
  
  @State private var currentIndex: Int = 0
  var coursePages: [CoursePageMember]
  
  
  var body: some View {
    VStack(spacing: -15){
      VStack {
        ZStack {
          ForEach(0..<coursePages.count, id: \.self) { index in
            CoursePage(courseData: coursePages[index])
              .frame(width: 330, height: 400)
              .cornerRadius(25)
              .opacity(currentIndex == index ? 1 : 0)
              .scaleEffect(currentIndex == index ? 1.0 : 0)
              .offset(x: 0, y: (CGFloat(index - currentIndex) * 20))
              .zIndex(currentIndex == index ? 1 : 0)
          }
        }
      }//: VSTACK
      
      
      
      VStack(spacing: 30) {
        
        HStack(spacing: 30) {
          Button {
            withAnimation {
              currentIndex = (currentIndex - 1 + coursePages.count) % coursePages.count
            }
          } label: {
            CourseButton2(image: "chevron.left")
          }
          
          HStack {
            Text("\(currentIndex + 1)")
              .font(.system(size: 14))
              .foregroundColor(Color("main-purple"))
            Text("/  \(coursePages.count)")
              .font(.system(size: 14))
              .foregroundColor(.gray)
          }
          Button {
            withAnimation {
              currentIndex = (currentIndex + 1) % coursePages.count
            }
          } label: {
            CourseButton2(image: "chevron.right")
          }
        }//HSTACK
        CourseButton1(buttonColor: Color("main-purple"), buttonText: "로드맵 전체 보러가기", textColor: .white, lineWidth: 3)
          .padding(.bottom, 30)
      }
    }
  }
}

struct CoursePageView_Previews: PreviewProvider {
  static var previews: some View {
    CoursePageView(coursePages: pageData2)
  }
}
