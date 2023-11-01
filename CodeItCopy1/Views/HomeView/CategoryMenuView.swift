//
//  CategoryMenuView.swift
//  CodeItCopy1
//
//  Created by hyunkyu yoon on 2023/07/01.
//

import SwiftUI

struct CategoryMenuView: View {
  
  let categories: [CategoryMember]
  
  let columnSpacing: CGFloat = 20
  let rowSpacing: CGFloat = 80
  var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: columnSpacing), count: 2)
  }
  
  
  var body: some View {
    
    
    ScrollView(.horizontal, showsIndicators: false) {
      
      HStack {
        
        Spacer()
        Image(systemName: "chevron.right.circle") // 스크롤 가능 여부를 나타내는 아이콘
          .foregroundColor(.gray)
          .font(.title3)
        
        
        LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
          
          ForEach(categories) { category in
            CategoryItemView(category: category)
              .frame(width: 100, height: 120)
              .padding(-5)
          }
        }//: GRID
      }//: HSTACK
      .padding(.top, 15)
      .padding(.bottom, 15)
      .frame(height: 250)
    }//: SCROLLVIEW
    .padding(.top, 30)
  }
}

struct CategoryMenuView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryMenuView(categories: categoryList)
      .previewLayout(.sizeThatFits)
    
  }
}
