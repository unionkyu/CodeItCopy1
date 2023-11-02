import SwiftUI

//struct TextView: View {
//  @State private var currentIndex: Int = 0
//  var coursePages: [CoursePageMember]
//
//  var body: some View {
//    ZStack {
//      ForEach(0..<coursePages.count, id: \.self) { index in
//        Testfile2(courseData: coursePages[index])
//          .opacity(currentIndex == index ? 1 : 0)
//          .scaleEffect(currentIndex == index ? 1.0 : 0)
//          .offset(x: 0, y: (CGFloat(index - currentIndex) * 20))
//          .zIndex(currentIndex == index ? 1 : 0)
//      }
//    }
//  }
//}
//
//
//struct TextView_Previews: PreviewProvider {
//  static var previews: some View {
//    TextView(coursePages: pageData)
//  }
//}
//
