//
//  RoadmapMember.swift
//  CodeItCopy1
//
//  Created by hyunkyu yoon on 2023/10/30.
//

import SwiftUI

struct RoadmapItem: Identifiable {
    let id: Int
    var image: String
    var title: String
    var titleColor: String
    var subTitle: String
    var subTitleColor: String
    var iconImage: String
    var fillColor: String
}

struct CustomRectangleView: View {
  var fillColor: Color
  
  var body: some View {
    Rectangle()
      .fill(fillColor)
      .frame(width: 161, height: 113)
      .cornerRadius(12)
  }
}
