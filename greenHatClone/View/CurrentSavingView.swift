import SwiftUI

struct CurrentSavingView: View {
    var body: some View {
        VStack {
            Text("$0")
                .font(.largeTitle)
                .padding()
            
            TextView(text: "savings deadline: never")
        }
    }
}
