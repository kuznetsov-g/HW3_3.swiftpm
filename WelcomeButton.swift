import SwiftUI

struct WelcomeButtonBody: View {
    let buttonTitle: String
    let action: () -> Void
    let buttonColor: Color
    let textColor: Color
    @AppStorage("userName") var storedUserName = ""
    var body: some View {
        Button(action: action){
            Text(buttonTitle)
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(textColor)
        }
        .padding()
        .frame(width: 120, height: 40)
        .background(buttonColor)
        .cornerRadius(20)
    }
    
    private func someYahoo() {}
}
