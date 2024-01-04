//
//  CustomBackgroundView.swift
//  Hiking
//
//  Created by Alfonso Patron on 04/01/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        
        ZStack{
            
            //MARK: -3 DEPTH
            Color(Color.customColorGreenDark)
                .cornerRadius(40)
                .offset(y: 0)
            
            //MARK: -2 LIGHT
            Color(Color.customGreenLight)
                .cornerRadius(40)
                .offset(y: -15)
          
            
            //MARK: -1 SURFACE
            
            LinearGradient(colors: [
                Color.customGreenLight,
                Color.customColorGreenMedium],
                           startPoint: .top,
                           endPoint: .bottom)
            .opacity(0.50)
        }
        .cornerRadius(40)
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
