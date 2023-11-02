//
//  Testfile2.swift
//  CodeItCopy1
//
//  Created by hyunkyu yoon on 2023/11/02.
//

import SwiftUI

struct CoursePage: View {
  
  @State var courseData: CoursePageMember
  
  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 12)
        .stroke(Color.gray)
        .frame(width: 310, height: 320)
        .overlay(
          Color.white
            .cornerRadius(12)
        )
      VStack {
        VStack(alignment: .leading, spacing: 20) {
          HStack(alignment: .top) {
            VStack(alignment:.leading, spacing: 8) {
              Text("로드맵")
                .font(.system(size: 14))
                .foregroundColor(.purple)
              
              Text(courseData.title)
                .font(.system(size: 16, weight: .bold))
                .fixedSize(horizontal: true, vertical: true)
            }//: VSTACK
            
            Spacer()
            
            Image(courseData.image)
              .resizable()
              .frame(width: 50, height: 50)
              .padding(.bottom)
              .fixedSize(horizontal: true, vertical: true)
              
          }//: HSTACK
          .frame(width: 280, height: 70)
          
          
          Text(courseData.description)
            .font(.system(size: 17))
            .foregroundColor(.gray)
            .fixedSize(horizontal: true, vertical: true)
          
          HStack {
            Image(systemName: "person")
              .foregroundColor(.gray)
            Text(courseData.student)
              .foregroundColor(.purple)
              .fixedSize(horizontal: true, vertical: true)
            Text("명 수강")
              .foregroundColor(.gray)
              .offset(x: -7)
          }
          
          HStack {
            Image(systemName: "square.stack")
              .foregroundColor(.gray)
            Text(courseData.topic)
              .foregroundColor(.gray)
            
          }
          CourseButton1(buttonColor: .white, buttonText: "무료 입장", textColor: .black, lineWidth: 1)
        }//: VSTACK
      }//: VSTACK
    }//: ZSTACK
  }
}

struct CoursePage_Previews: PreviewProvider {
  static var previews: some View {
    CoursePage(courseData: pageData1[0])
  }
}
