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
          //ACTION
          print("search button pressed")
        } label: {
          Image(systemName: "magnifyingglass")
            .font(.title3)
            .fontWeight(.medium)
            .foregroundColor(.black)
            .frame(width: 116, height: 27)
            .multilineTextAlignment(.leading)
        }
        
        Spacer()
        
        Button {
          
        } label: {
          Text("Codeing?")
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
            .font(.system(size: 16, weight: .medium, design: .rounded))
            .frame(width: 116, height: 27)
        }
        
        
      }
      .foregroundColor(.primary)
      
      Capsule()
        .foregroundColor(.gray)
        .frame(height: 1)
    }
    .padding(.bottom, -7)
  }
}

struct HeaderView_Previews: PreviewProvider {
  static var previews: some View {
    HeaderView()
  }
}
