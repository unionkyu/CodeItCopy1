//
//  AppView.swift
//  CodeItCopy1
//
//  Created by hyunkyu yoon on 2023/10/30.
//

import SwiftUI

struct AppView: View {
    
  var body: some View {
    TabView {
      NavigationStack {
        ContentView()
      }
      .tabItem {
        Label("홈", systemImage: "house")
      }
      
      NavigationStack {
        CourseView()
      }
      .tabItem {
        Label("수업 탐색", systemImage: "doc.text.magnifyingglass")
      }
      
      
      Text("커뮤니티")
        .tabItem {
          Label("커뮤니티", systemImage: "ellipsis.bubble.fill")
        }
      Text("멤버십")
        .tabItem {
          Label("멤버십", systemImage: "creditcard")
        }
      Text("더보기")
        .tabItem {
          Label("더보기", systemImage: "ellipsis")
        }
    }
    .accentColor(Color("main-purple"))
  }
}

struct AppView_Previews: PreviewProvider {
  static var previews: some View {
    AppView()
  }
}
