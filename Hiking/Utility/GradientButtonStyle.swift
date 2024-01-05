//
//  GradientButtonStyle.swift
//  Hiking
//
//  Created by Alfonso Patron on 04/01/24.
//

import Foundation
import SwiftUI

struct GradientButtonStyle : ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                
                // Conditional Statement -> Change color when user touch the button.
                
                configuration.isPressed ?
                LinearGradient(colors: [.customColorGrayMedium, .colorGrayLight], startPoint: .top, endPoint: .bottom)
                :
                LinearGradient(colors: [.colorGrayLight, .colorGrayMedium], startPoint: .top, endPoint: .bottom))

            
            .clipShape(RoundedRectangle(cornerRadius: 40))
    }
    
}
