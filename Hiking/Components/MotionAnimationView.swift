//
//  MotionAnimationView.swift
//  Hiking
//
//  Created by Alfonso Patron on 04/01/24.
//

import SwiftUI

struct MotionAnimationView: View {
    
    
    @State private var randomCircle : Int = Int.random(in: 6...12)
    @State private var isAnimate : Bool = false

    //MARK: FUNCTIONS
    // RANDOM COORDINATES
    
    func randomCoordinates() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
//    RANDOM SIZE
    
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 4...80))
    }
//    RANDOM SCALE
    
    func randomScale () -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
//    RANDOM SPEED
//    RANDOM DELAY
    var body: some View {
        
        ZStack {
            ForEach(0..<randomCircle, id: \.self) { item in
                Circle()
                    .foregroundStyle(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(
                        x: randomCoordinates(),
                        y: randomCoordinates()
                    )
                    .scaleEffect(isAnimate ? randomScale() : 1)
                
                
            }
            
            .onAppear(perform: {
                withAnimation(.interpolatingSpring(stiffness: 0.25, damping: 0.25)
                
                    .repeatForever()
                )
                {
                    isAnimate = true
                }
            })
        
        }
        .frame(width: 256, height: 256)

        
    }
}

#Preview {
    ZStack {
        Color.teal.edgesIgnoringSafeArea(.all)
        MotionAnimationView()

    }
}
