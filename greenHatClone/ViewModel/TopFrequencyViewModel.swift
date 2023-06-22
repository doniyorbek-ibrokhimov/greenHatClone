import SwiftUI

class TopFrequencyViewModel: ObservableObject {
    
    @Published var frequencyModels = [
        FrequencyModel(imageName: "arrow.up.forward", type: "daily", amount: "$12"),
        FrequencyModel(imageName: "arrow.up.forward", type: "weekly", amount: "$72"),
        FrequencyModel(imageName: "arrow.up.forward", type: "monthly", amount: "$337"),
        FrequencyModel(imageName: "arrow.up.forward", type: "yearly", amount: "$4048"),
    ]
    
}
