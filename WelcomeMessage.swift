import SwiftUI

struct welcomeMessage: View {
    @Binding var rainbowText: String
    @Binding var onOffSwitcher: Bool
    let hueColors = stride(from: 0, to: 1, by: 0.01).map {
        Color(hue: $0, saturation: 1, brightness: 1)
    }
    var body: some View {
        HStack {
            LinearGradient(gradient: Gradient(colors: hueColors),
                           startPoint: .leading,
                           endPoint: onOffSwitcher ?  .trailing : .leading)
            .mask(Text("\(rainbowText)").font(.system(size: 30)))
        }
            }
    }

struct welcomeMessage_Previews: PreviewProvider {
    static var previews: some View {
        welcomeMessage(rainbowText: .constant("welcome User"), onOffSwitcher: .constant(true))
    }
}
