import SwiftUI

struct CourseButton1: View {
  var buttonColor: Color // 버튼 색상
  var buttonText: String // 버튼 텍스트
  var textColor: Color // 텍스트 색상
  var lineWidth: CGFloat // 라인 두께
  
  init(buttonColor: Color, buttonText: String, textColor: Color, lineWidth: CGFloat) {
    self.buttonColor = buttonColor
    self.buttonText = buttonText
    self.textColor = textColor
    self.lineWidth = lineWidth
  }
  
  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 12)
        .stroke(Color.black, lineWidth: lineWidth)
        .frame(width: 280, height: 50)
        .overlay(
          buttonColor
            .cornerRadius(12)
        )
      Text(buttonText)
        .font(.system(size: 14, weight: .semibold))
        .foregroundColor(textColor)
    }
  }
}

struct CourseButton2: View {
  var image: String
  
  init(image: String) {
    self.image = image
  }
  
  var body: some View {
    ZStack {
      
        RoundedRectangle(cornerRadius: 12)
          .stroke(Color.gray)
          .frame(width: 60, height: 50)
          .overlay(
            Color.white
              .cornerRadius(12)
          )
        Image(systemName: image)
          .foregroundColor(.black)
      
    }
  }
}
