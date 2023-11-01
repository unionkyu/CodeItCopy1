//
//  RoadmapItemView.swift
//  CodeItCopy1
//
//  Created by hyunkyu yoon on 2023/10/30.
//

import SwiftUI

struct RoadmapItemView: View {
    @State var roadmapItem: RoadmapItem
    
    var body: some View {
        ZStack {
            CustomRectangleView(fillColor: Color(roadmapItem.fillColor))
            
            GeometryReader { geometry in
              ZStack {
                Image(roadmapItem.image)
                      .resizable()
                    .frame(width: 161, height: 113)
              }
                
                Text(roadmapItem.title)
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(Color(roadmapItem.titleColor))
                    .offset(x: (geometry.size.width - 120) / 2, y: (geometry.size.height - 70) / 2)
                
                Text(roadmapItem.subTitle)
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundColor(Color(roadmapItem.subTitleColor))
                    .offset(x: (geometry.size.width - 120) / 2, y: (geometry.size.height - 40) / 2)
              
                Image(roadmapItem.iconImage)
                  .resizable()
                  .scaledToFit()
                  .frame(width: 44, height: 44)
                  .offset(x: (geometry.size.width + 45) / 2, y: (geometry.size.height + 10) / 2)
            }
            .frame(width: 161, height: 113)
            
        }
    }
}


struct RoadmapItemView_Previews: PreviewProvider {
    static var previews: some View {
      RoadmapItemView(roadmapItem: roadmapItemList[2])
        .fixedSize()
    }
}




