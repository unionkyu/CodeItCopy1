//
//  CoursePage.swift
//  CodeItCopy1
//
//  Created by hyunkyu yoon on 2023/11/01.
//

import SwiftUI

struct CoursePage: View {
  
  var body: some View {
    VStack(spacing: 30) {
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
            HStack(alignment: .top, spacing: 70) {
              VStack(alignment:.leading, spacing: 8) {
                Text("로드맵")
                  .font(.system(size: 14))
                  .foregroundColor(.purple)
                
                Text("HTML/CSS로 웹사이트 \n만들기")
                  .font(.system(size: 16, weight: .bold))
              }//: VSTACK
              
              Image("html-icon")
                .resizable()
                .frame(width: 50, height: 50)
            }//: HSTACK
            
            Text("웹사이트를 만들어 보면서 웹퍼블리싱 \n기초 쌓기")
              .font(.system(size: 17))
              .foregroundColor(.gray)
            
            HStack {
              Image(systemName: "person")
                .foregroundColor(.gray)
              Text("23,206")
                .foregroundColor(.purple)
              Text("명 수강")
                .foregroundColor(.gray)
                .offset(x: -7)
            }
            
            HStack {
              Image(systemName: "square.stack")
                .foregroundColor(.gray)
              Text("토픽 6개")
                .foregroundColor(.gray)
            }
            
            ZStack {
              RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray)
                .frame(width: 280, height: 50)
              
              Text("무료 입장")
                .font(.system(size: 15, weight: .semibold))
            }
            
          }//: VSTACK
        }//: VSTACK
      }//: ZSTACK
      
      VStack(spacing: 30) {
        HStack(spacing: 160) {
          Button {
            //ACTION
          } label: {
            ZStack {
              RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray)
                .frame(width: 60, height: 50)
                .overlay(
                  Color.white
                    .cornerRadius(12)
                )
              Image(systemName: "chevron.left")
                .foregroundColor(.black)
            }
          }
          
          Button {
            //ACTION
          } label: {
            ZStack {
              RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray)
                .frame(width: 60, height: 50)
                .overlay(
                  Color.white
                    .cornerRadius(12)
                )
              Image(systemName: "chevron.right")
                .foregroundColor(.black)
            }
          }
        }//: HSTACK
        ZStack {
          RoundedRectangle(cornerRadius: 12)
            .stroke(Color.black, lineWidth: 3)
            .frame(width: 280, height: 50)
            .overlay(
              Color("main-purple")
                .cornerRadius(12)
            )
          Text("로드맵 전체 보러가기")
            .font(.system(size: 14, weight: .semibold))
            .foregroundColor(.white)
        }
        .padding(.bottom, 30)
      }
    }
  }
}

struct CoursePage_Previews: PreviewProvider {
  static var previews: some View {
    CoursePage()
  }
}
