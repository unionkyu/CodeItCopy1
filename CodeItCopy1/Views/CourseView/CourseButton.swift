import SwiftUI

struct CourseButton: View {
  @State private var isButtonSelected = false
  @State var buttonData: [CourseSelectButton] = [
    CourseSelectButton(id: 0, title: "BEST", textColor: Color("button_text"), backgroundColor: Color("button_purple2"), isButtonSelected: true),
    CourseSelectButton(id: 1, title: "코딩이 처음이라면", textColor: Color("button_text"), backgroundColor: Color("button_purple2"), isButtonSelected: false),
    CourseSelectButton(id: 2, title: "취업하기", textColor: Color("button_text"), backgroundColor: Color("button_purple2"), isButtonSelected: false),
    CourseSelectButton(id: 3, title: "업무에 활용하기", textColor: Color("button_text"), backgroundColor: Color("button_purple2"), isButtonSelected: false)
  ]
  
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
    CourseButton()
  }
}

