import SwiftUI

struct ColorfulView: View {
    let start: Color
    let end: Color

    init(count: Int) {
        let randomHue = Double.random(in: 0...360)

        print("Called ColorfulView.init with count: \(count); generated random hue: \(randomHue)")

        start = Color(hue: randomHue / 360.0, saturation: 1, brightness: 1)
        end = Color(hue: randomHue + Double(count * 2), saturation: 1, brightness: 1)
    }

    var body: some View {
        Rectangle()
            .fill(
                LinearGradient(colors: [start, end], startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .frame(height: 40)
    }
}

#Preview {
    List {
        ColorfulView(count: 1)
        ColorfulView(count: 2)
        ColorfulView(count: 3)
        ColorfulView(count: 5)
        ColorfulView(count: 7)
        ColorfulView(count: 10)
        ColorfulView(count: 12)
    }
}
