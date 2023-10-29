import SwiftUI

struct SearchFieldView: View {
    @State private var typedText = ""
  private let placeholderOptions = ["코딩 기초", "파이썬", "데이터 분석", "프론트엔드", "백엔드"]
    @State private var currentWordIndex = 0
    @State private var currentCharacterIndex = 0
    @State private var isTyping = true
    @State private var isEditing = false
    @State private var typingSpeed: Double = 0.2
    @State private var deletingSpeed: Double = 0.1

    var body: some View {
        VStack {
            Text("어떤 강의를 찾고 있나요?")
                .font(.system(size: 32))
                .fontWeight(.bold)
                .padding(.bottom, 30)

            ZStack {
                HStack(spacing: 10) {
                    Spacer()

                    Button(action: {
                        // 검색 액션 수행
                    }) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.purple)
                            .font(.title2)
                            .fontWeight(.medium)
                            .padding(.leading, 10)
                    }

                    TextField("", text: $typedText, onEditingChanged: { editing in
                        if editing {
                            // 텍스트 필드를 터치했을 때 애니메이션 멈추고 텍스트 초기화
                            isEditing = true
                            typedText = ""
                        } else {
                            // 텍스트 필드를 떼었을 때 애니메이션 재개
                            isEditing = false
                            startTypingAnimation()
                        }
                    })
                    .padding()
                    .cornerRadius(20)
                    .foregroundColor(.gray)
                }
            }
            .overlay(
                Capsule()
                    .stroke(LinearGradient(gradient: Gradient(colors: [.purple, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 3)
            )
            .frame(width: 305, height: 49)
        }
        .padding(.top, 40)
        .onAppear {
            startTypingAnimation()
        }
    }

    func startTypingAnimation() {
        Timer.scheduledTimer(withTimeInterval: isTyping ? typingSpeed : deletingSpeed, repeats: true) { timer in
            if !isEditing { // 편집 중이 아닐 때만 애니메이션 수행
                if isTyping {
                    if currentCharacterIndex < placeholderOptions[currentWordIndex].count {
                        let index = placeholderOptions[currentWordIndex].index(placeholderOptions[currentWordIndex].startIndex, offsetBy: currentCharacterIndex)
                        typedText.append(placeholderOptions[currentWordIndex][index])
                        currentCharacterIndex += 1
                    } else {
                        isTyping = false
                    }
                } else {
                    if !typedText.isEmpty {
                        typedText.removeLast() // 입력된 텍스트 한 글자 삭제
                    } else {
                        // Move to the next word
                        currentWordIndex = (currentWordIndex + 1) % placeholderOptions.count
                        currentCharacterIndex = 0
                        isTyping = true
                    }
                }
            }
        }
    }
}

struct SearchFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SearchFieldView()
            .previewLayout(.sizeThatFits)
    }
}

