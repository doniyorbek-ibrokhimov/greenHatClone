import SwiftUI

struct TextView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.footnote)
    }
}
