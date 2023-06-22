import SwiftUI

struct WhenOnScrollView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                TextView(text: "when:")
                Spacer()
                Spacer()
                TextView(text: "on:")
                Spacer()
            }
            
            ScrollView() {
                ForEach(0..<15) { _ in
                    WhenOnRowView()
                }
            }
        }
    }
}

struct WhenOnRowView: View {
    var body: some View {
        HStack {
            OnButtonView(text: "$500")
            Image(systemName: "greaterthan")
            OnButtonView(text: "8-3-2023")
        }
        .padding(.horizontal)
    }
}

struct OnButtonView: View {
    let text: String
    
    var body: some View {
        Button {
            
        } label: {
            VStack {
                TextView(text: text)
                Rectangle()
                    .frame(height: 1)
                    .padding(.horizontal)
                    .padding(.vertical, -7)
            }
        }
        .foregroundStyle(.black)
    }
}
