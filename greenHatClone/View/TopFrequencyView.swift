import SwiftUI

struct TopFrequencyView: View {
    @StateObject var viewModel = TopFrequencyViewModel()
    
    var body: some View {
        HStack {
            ForEach(viewModel.frequencyModels, id: \.self) { frequencyModel in
                Spacer()
                VStack {
                    FrequencyImageView(imageName: frequencyModel.imageName)
                    TextView(text: frequencyModel.type)
                    TextView(text: frequencyModel.amount)
                }
                Spacer()
            }
        }
    }
}

struct FrequencyImageView: View {
    let imageName: String
    
    var body: some View {
        Image(systemName: imageName)
            .foregroundColor(.green)
            .font(.headline)
    }
}
