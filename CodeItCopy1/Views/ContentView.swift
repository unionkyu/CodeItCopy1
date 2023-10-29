//
//  ContentView.swift
//  CodeItCopy1
//
//  Created by hyunkyu yoon on 2023/07/01.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationStack {
      HeaderView()
      ScrollView(.vertical, showsIndicators: true) {
        SearchFieldView()
        CategoryMenuView(categories: categoryList)
        EmploymentRoadmapView()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewLayout(.sizeThatFits)
  }
}
