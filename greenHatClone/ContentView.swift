import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                TopFrequencyView()
                
                CurrentSavingView()
                    .padding(.bottom, 20)
                
                WhenOnScrollView()
                    .frame(width: 300, height: 80)
                    .padding(.bottom)
                
                IncomeExpansesScrollView()
                    .padding()
            }
            BottomButtonView()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

