//
//  ButtonMember.swift
//  CodeItCopy1
//
//  Created by hyunkyu yoon on 2023/11/01.
//

import SwiftUI

struct CourseSelectButton: Identifiable {
  let id: Int
  var title: String
  var textColor: Color
  var backgroundColor: Color
  var isButtonSelected: Bool
}

var buttonData: [CourseSelectButton] = [
  CourseSelectButton(id: 0, title: "BEST", textColor: Color("button_text"), backgroundColor: Color("button_purple2"), isButtonSelected: true),
  CourseSelectButton(id: 1, title: "코딩이 처음이라면", textColor: Color("button_text"), backgroundColor: Color("button_purple2"), isButtonSelected: false),
  CourseSelectButton(id: 2, title: "취업하기", textColor: Color("button_text"), backgroundColor: Color("button_purple2"), isButtonSelected: false),
  CourseSelectButton(id: 3, title: "업무에 활용하기", textColor: Color("button_text"), backgroundColor: Color("button_purple2"), isButtonSelected: false)
]
