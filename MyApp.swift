import SwiftUI

@main
struct MyApp: App {
    //@State var haveName = false
    @State var userName = ""
    @AppStorage("userName") var storedUserName = ""
    var body: some Scene {
        WindowGroup {
            if storedUserName.count > 2 { WelcomeView() } 
            else { LoginView() }
        }
    }
}

