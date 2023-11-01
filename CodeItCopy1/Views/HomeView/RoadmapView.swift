//
//  EmploymentRoadmapView.swift
//  CodeItCopy1
//
//  Created by hyunkyu yoon on 2023/10/30.
//

import SwiftUI

struct RoadmapView: View {
  
  let roadmapItems: [RoadmapItem]
  
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
          ForEach(0..<roadmapItems.count / 2, id: \.self) { rowIndex in
            HStack {
              ForEach(0..<2, id: \.self) { columnIndex in
                let index = rowIndex * 2 + columnIndex
                if index < roadmapItems.count {
                  Button {
                    // ACTION
                    print("Button Pressed")
                  } label: {
                    RoadmapItemView(roadmapItem: roadmapItems[index])
                  }
                } else {
                  Spacer()
                }
              }
            }
          }
        }
      }
    }
  }
}



struct RoadmapView_Previews: PreviewProvider {
  static var previews: some View {
    RoadmapView(roadmapItems: roadmapItemList)
  }
}
