//
//  EmploymentRoadmapView.swift
//  CodeItCopy1
//
//  Created by hyunkyu yoon on 2023/10/30.
//

import SwiftUI

struct EmploymentRoadmapView: View {
  var body: some View {
    VStack {
      HStack {
        Text("취업로드맵")
          .font(.system(size: 30, weight: .semibold))
        Spacer()
      }//: HSTACK
      .padding(10)
      .padding([.top, .bottom], 20)
      .frame(width: 350)
      
      ZStack {
        // 투명한 컨테이너
        Rectangle()
          .fill(Color.clear)
          .frame(width: 350, height: 239)
        
        // 네모박스들
        VStack {
          HStack {
            
            Button {
              //ACTION
              print("Button Pressed")
            } label: {
              Rectangle()
                .fill(Color("Python_Green"))
                .frame(width: 161, height: 113)
                .cornerRadius(12)
            }
            Button {
              //ACTION
              print("Button Pressed")
            } label: {
              Rectangle()
                .fill(Color("Python_Purple"))
                .frame(width: 161, height: 113)
                .cornerRadius(12)
            }
            
          }
          
          HStack {
            
            Button {
              //ACTION
              print("Button Pressed")
            } label: {
              Rectangle()
                .fill(Color("JavaScript_Yellow"))
                .frame(width: 161, height: 113)
                .cornerRadius(12)
            }
            
            Button {
              //ACTION
              print("Button Pressed")
            } label: {
              Rectangle()
                .fill(Color("JavaScript_Yellow"))
                .frame(width: 161, height: 113)
                .cornerRadius(12)
            }
          }
        }
      }
    }
  }
}

struct EmploymentRoadmapView_Previews: PreviewProvider {
  static var previews: some View {
    EmploymentRoadmapView()
  }
}
