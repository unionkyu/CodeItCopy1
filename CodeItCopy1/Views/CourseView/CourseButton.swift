import SwiftUI

struct CourseButton: View {
  @State private var isButtonSelected = false
  @State var buttonData: [CourseSelectButton]
  
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack {
        ForEach(0..<buttonData.count, id: \.self) { index in
          Button(action: {
            
            buttonData[index].isButtonSelected = true
            
            // 나머지 버튼들의 상태를 false로 설정
            for i in 0..<buttonData.count where i != index {
              buttonData[i].isButtonSelected = false
              
            }
          }) {
            Text(buttonData[index].title)
              .font(.system(size: 14, weight: .bold))
              .foregroundColor(buttonData[index].isButtonSelected ? .white : buttonData[index].textColor)
              .padding()
              .background(Capsule().fill(buttonData[index].isButtonSelected ? buttonData[index].backgroundColor : Color("button_purple1")))
          }
        }
      }//:HSTACK
    }//:SCROLL
    .frame(height: 55)
  }
}


struct CourseButton_Previews: PreviewProvider {
  static var previews: some View {
    CourseButton(buttonData: buttonData)
  }
}

