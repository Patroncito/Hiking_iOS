//
//  MotionAnimationView.swift
//  Hiking
//
//  Created by Alfonso Patron on 04/01/24.
//

import SwiftUI

struct MotionAnimationView: View {
    
    
    @State private var randomCircle : Int = Int.random(in: 6...12)
    
    //MARK: FUNCTIONS
    // RANDOM COORDINATES
    
    func randomCoordinates() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
//    RANDOM SIZE
//    RANDOM SCALE
//    RANDOM SPEED
//    RANDOM DELAY
    var body: some View {
        
        ZStack {
            ForEach(0..<randomCircle, id: \.self) { item in
                Circle()
                    .foregroundStyle(.white)
                    .opacity(0.25)
                    .position(
                        x: randomCoordinates(),
                        y: randomCoordinates())
            }
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
