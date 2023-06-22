import SwiftUI

class IncomeExpansesScrollViewModel: ObservableObject {
    
    @Published var incomeExpanseModel = IncomeExpanseModel(amount: "$10", type: "weekly", purpose: "for taxi")
    
}

