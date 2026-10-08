import SwiftUI

extension Font {

    static let loafTitle = Font.system(
        size: 32,
        weight: .bold,
        design: .serif
    )

    static let loafHeading = Font.system(
        size: 24,
        weight: .semibold,
        design: .serif
    )

    static let loafBody = Font.system(
        size: 16,
        weight: .regular,
        design: .serif
    )

    static let loafCaption = Font.system(
        size: 13,
        weight: .regular,
        design: .serif
    )
}

struct ContentView: View {
    var body: some View {
        Text("Peanut Butter")
            .font(.loafBody)
    }
}

#Preview {
    ContentView()
}
