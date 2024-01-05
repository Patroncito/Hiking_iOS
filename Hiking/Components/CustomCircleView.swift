//
//  CustomCircleView.swift
//  Hiking
//
//  Created by Alfonso Patron on 04/01/24.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient : Bool = false

    
    var body: some View {
       
        ZStack {
            Circle()
                .fill(LinearGradient(colors: [
                    .pink,
                    Color(Color.colorIndigoMedium),
                    Color(Color.colorSalmonLight)],
                    startPoint: isAnimateGradient ? .topLeading :.bottomLeading,
                    endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing))
            
                .frame(width: 256, height: 256)
            
            
                .onAppear {
                    withAnimation(.linear(duration: 3.0) .repeatForever(autoreverses: true))
                    {
                        isAnimateGradient.toggle()
                }
                    
            }
            MotionAnimationView()
        }
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
