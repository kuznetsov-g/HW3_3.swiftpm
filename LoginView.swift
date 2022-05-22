import SwiftUI

struct LoginView: View {
    @AppStorage("userName") var storedUserName = "0"
    @State private var textFieldUserName = ""
    //@Binding var haveName: Bool
    //@Binding var userName: String
    @State var buttonOff = true
    var body: some View {
        HStack {
            TextField("name:", text: $textFieldUserName) 
                .onChange(of: textFieldUserName) {_ in  
                    if textFieldUserName.count < 3 { buttonOff = true } else { buttonOff = false }
                }
            Text("\(textFieldUserName.count)")
                .foregroundColor(textFieldUserName.count < 3 ? .red : .green)
        }.padding()
        HStack{
        Text("🫡")
            Button("ok") {
                //haveName = true
                storedUserName = textFieldUserName
                print("now we save this name")
            }
            .disabled(buttonOff)
        }
    }
}

