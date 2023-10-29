//
//  HeaderView.swift
//  CodeItCopy1
//
//  Created by hyunkyu yoon on 2023/07/01.
//

import SwiftUI

struct HeaderView: View {
  // MARK: - PROPERTY
  
  
  
  // MARK: - FUNCTION
  func openURL(site: String) {
    if let url = URL(string: site) {
              if UIApplication.shared.canOpenURL(url) {
                  UIApplication.shared.open(url, options: [:], completionHandler: nil)
              }
          }
      }
  
  // MARK: - BODY
    var body: some View {
      VStack {
        HStack {
          Button {
            
          } label: {
            Image(systemName: "list.bullet")
              .font(.title2)
              .fontWeight(.medium)
              .foregroundColor(.black)
          }
          
          Button {
            //ACTION
          } label: {
            Image(systemName: "magnifyingglass")
              .font(.title2)
              .fontWeight(.medium)
              .foregroundColor(.black)
          }
          
          Spacer()
          
          Button {
            
          } label: {
            Text("Codeit;")
              .foregroundColor(.purple)
              .font(.title)
              .fontWeight(.bold)
          }

          Spacer()
          
          Button {
            print("Signup button pressed")
            openURL(site: "https://www.codeit.kr/signup")
          } label: {
            Text("회원가입")
              .foregroundColor(.black)
              .font(.system(size: 18, weight: .medium, design: .rounded))
          }
          
          
        }
        .padding(.leading, 18)
        .padding(.trailing, 18)
        .foregroundColor(.primary)
        
        Capsule()
          .foregroundColor(.gray)
          .frame(height: 1)
          
      }
    
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
        .previewLayout(.fixed(width: .infinity, height: 100))
    }
}
