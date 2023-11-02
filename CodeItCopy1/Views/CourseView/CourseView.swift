//
//  CourseView.swift
//  CodeItCopy1
//
//  Created by hyunkyu yoon on 2023/10/31.
//

import SwiftUI

struct CourseView: View {
  @State private var courseData: [CoursePageMember] = pageData1
  
  var body: some View {
    
    
    NavigationStack {
      HeaderView()
      ScrollView {
        ZStack {
          
          VStack {
            VStack(alignment:.center, spacing: 10) {
              
              Text("어떻게 시작해야할 지 모르겠나요?")
                .font(.system(size: 16, weight: .medium))
                .padding(.top, 40)
              
              Text("전문가가 만든 로드맵을 따라가 보세요!")
                .font(.system(size: 24, weight: .heavy))
                .padding(.bottom, 10)
              
              CourseButton()
              
              CoursePageView(coursePages: courseData)
            }
            .background(Color("course_base"))
            .padding(.bottom, -7)
            
            FooterView()
          }
        }
      }
    }
  }
}


struct CourseView_Previews: PreviewProvider {
  static var previews: some View {
    CourseView()
  }
}
