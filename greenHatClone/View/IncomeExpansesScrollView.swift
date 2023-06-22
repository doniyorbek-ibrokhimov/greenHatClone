import SwiftUI

struct IncomeExpansesScrollView: View {
    
    @StateObject var viewModel = IncomeExpansesScrollViewModel()
    
    var body: some View {
        ScrollView {
            ForEach(0..<50) { _ in
                HStack {
                    TextView(text: viewModel.incomeExpanseModel.amount)
                        .foregroundStyle(.green)
                    Spacer()
                    
                    TextView(text: viewModel.incomeExpanseModel.type)
                    Spacer()
                    
                    TextView(text: viewModel.incomeExpanseModel.purpose)
                }
                .padding(.horizontal)
                .padding(.vertical, 1)
            }
        }
    }
}
