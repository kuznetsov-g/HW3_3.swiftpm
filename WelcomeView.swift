import SwiftUI

struct WelcomeView: View {
    @State private var rainBowSwitcher = false
    @AppStorage("userName") var storedUserName = ""
    //@Binding var haveName: Bool
    var body: some View {
        VStack{
            welcomeMessage(rainbowText: .constant("Welcome \(storedUserName)"), onOffSwitcher: $rainBowSwitcher)
        HStack{
            WelcomeButtonBody(buttonTitle: "YAhooo", action: yahooAction, buttonColor: .blue, textColor: .yellow)
            WelcomeButtonBody(buttonTitle: "Logout", action: logOut, buttonColor: .gray, textColor: .red)
        }
        }.padding()
    }
    
    private func yahooAction() {
        rainBowSwitcher.toggle()
        }
    
    private func logOut() {
        storedUserName = ""
        //haveName = false
    }
}
