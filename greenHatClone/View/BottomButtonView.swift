import SwiftUI

struct BottomButtonView: View {
    var body: some View {
        VStack {
            Spacer()
            Button {
                
            } label: {
                ZStack{
                    CircleButtonView(color: .black, degree: 90)
                    CircleButtonView(color: .white, degree: 270)
                }
            }
            .frame(height: 50)
            .padding(.bottom, 30)
        }
    }
}

struct CircleButtonView: View {
    let color: Color
    let degree: Double
    
    var body: some View {
        Circle()
            .foregroundStyle(color.opacity(0.9))
            .clipShape(TopHalfCircle())
            .overlay {
                Circle()
                    .stroke(lineWidth: 3)
                    .foregroundStyle(.black)
            }
            .rotationEffect(.degrees(degree))
    }
}

struct TopHalfCircle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                    radius: rect.width / 2,
                    startAngle: Angle.degrees(0),
                    endAngle: Angle.degrees(180),
                    clockwise: false)
        return path
    }
}
