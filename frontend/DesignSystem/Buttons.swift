import SwiftUI

struct LoafButtonStyle: ButtonStyle {

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.loafBody)
    }
}

#Preview {
    Button("Save Recipe") {
        print("Saved")
    }
    .buttonStyle(LoafButtonStyle())
    
    Text("Test")
        .font(Font.loafBody)
}
