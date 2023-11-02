//
//  CoursePageMember.swift
//  CodeItCopy1
//
//  Created by hyunkyu yoon on 2023/11/02.
//

import Foundation

struct CoursePageMember: Identifiable {
  let id: Int
  var title: String
  var image: String
  var description: String
  var student: String
  var topic: String
}

var pageData1: [CoursePageMember] = [
  CoursePageMember(id: 0, title: "HTML/CSS로 웹사이트 \n만들기", image: "html-icon", description:"웹사이트를 만들어 보면서 웹퍼블리싱 \n기초 쌓기", student: "23,232", topic: "토픽 6개"),
  CoursePageMember(id: 1, title: "Python 기초", image: "python-icon", description: "웹 개발,데이터 분석 업무 자동화의 \n첫걸음! 파이썬 기본기 다지기", student: "145,164", topic: "토픽 4개"),
  CoursePageMember(id: 2, title: "데이터분석,기초에서 \n실전까지", image: "data-icon", description: "데이터를 자유자재로 다루는 능력 키우기\n", student: "233,455", topic: "토픽 14개"),
  CoursePageMember(id: 3, title: "머신러닝", image: "machine-icon", description: "쉽게 배우는 머신러닝! 원리부터 차근차근\n시작하기", student: "196,740", topic: "토픽 12개")
]

var pageData2: [CoursePageMember] = [
  CoursePageMember(id: 0, title: "컴퓨터 개론", image: "introduction-icon", description:"프로그래밍 관련 교양 지식 갖추기\n", student: "150,835", topic: "토픽 4개"),
  CoursePageMember(id: 1, title: "Python 기초", image: "python-icon", description: "웹 개발,데이터 분석 업무 자동화의 \n첫걸음! 파이썬 기본기 다지기", student: "145,164", topic: "토픽 4개"),
  CoursePageMember(id: 2, title: "JavaScript 기초", image: "javascript-icon", description: "웹 개발에 필수! 자바스크립트 기본기\n다지기", student: "35,651", topic: "토픽 14개"),
  CoursePageMember(id: 3, title: "HTML/CSS로 웹사이트 \n만들기", image: "html-icon", description: "웹사이트를 만들어 보면서 웹퍼블리싱 \n기초 쌓기", student: "23,232", topic: "토픽 6개")
]

var pageData3: [CoursePageMember] = [
  CoursePageMember(id: 0, title: "HTML/CSS로 웹사이트 \n만들기", image: "html-icon", description:"웹사이트를 만들어 보면서 웹퍼블리싱 \n기초 쌓기", student: "23,232", topic: "토픽 6개"),
  CoursePageMember(id: 1, title: "Python 기초", image: "python-icon", description: "웹 개발,데이터 분석 업무 자동화의 \n첫걸음! 파이썬 기본기 다지기", student: "145,164", topic: "토픽 4개"),
  CoursePageMember(id: 2, title: "데이터분석,기초에서 \n실전까지", image: "data-icon", description: "데이터를 자유자재로 다루는 능력 키우기\n", student: "233,455", topic: "토픽 14개"),
  CoursePageMember(id: 3, title: "머신러닝", image: "machine-icon", description: "쉽게 배우는 머신러닝! 원리부터 차근차근\n시작하기", student: "196,740", topic: "토픽 12개")
]

var pageData4: [CoursePageMember] = [
  CoursePageMember(id: 0, title: "HTML/CSS로 웹사이트 \n만들기", image: "html-icon", description:"웹사이트를 만들어 보면서 웹퍼블리싱 \n기초 쌓기", student: "23,232", topic: "토픽 6개"),
  CoursePageMember(id: 1, title: "Python 기초", image: "python-icon", description: "웹 개발,데이터 분석 업무 자동화의 \n첫걸음! 파이썬 기본기 다지기", student: "145,164", topic: "토픽 4개"),
  CoursePageMember(id: 2, title: "데이터분석,기초에서 \n실전까지", image: "data-icon", description: "데이터를 자유자재로 다루는 능력 키우기\n", student: "233,455", topic: "토픽 14개"),
  CoursePageMember(id: 3, title: "머신러닝", image: "machine-icon", description: "쉽게 배우는 머신러닝! 원리부터 차근차근\n시작하기", student: "196,740", topic: "토픽 12개")
]
