//
//  CategoryItem.swift
//  CodeItCopy1
//
//  Created by hyunkyu yoon on 2023/07/01.
//

import SwiftUI

struct CategoryItemView: View {
  
  @State var category: CategoryMember
  
  var body: some View {
    VStack {
      Image(category.image)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 70, height: 70)
        .background(Color("ColorWoongGray"))
        .cornerRadius(15)
        .padding(5)

      
      
      Text(category.name)
        .font(.system(size: 15, weight: .regular, design: .rounded))
        .multilineTextAlignment(.center)
        .aspectRatio(contentMode: .fill)
        .fixedSize(horizontal: false, vertical: true)
        .padding(.bottom, 3)
      
    }
  }
}

struct CategoryItemView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryItemView(category: categoryList[1])
  }
}

