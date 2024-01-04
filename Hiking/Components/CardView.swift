//
//  CardView.swift
//  Hiking
//
//  Created by Alfonso Patron on 04/01/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        
        ZStack {
            CustomBackgroundView()
            VStack() {
                
                VStack(alignment: .leading){
                    
                    Text("Hiking")
                        .font(.system(size: 52))
                        .fontWeight(.bold)
                        .foregroundStyle(LinearGradient(colors: [.customColorGrayLight, .customColorGrayMedium], startPoint: .top, endPoint: .bottom))
                    
                    Text("Have fun and enjoy outdoor activities with friends and family.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customColorGrayMedium)
                    
                }
                .padding(.horizontal, 30)
                ZStack{
                    
                    Circle()
                        .fill(LinearGradient(colors: [Color(Color.colorIndigoMedium), Color(Color.colorSalmonLight)], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width: 256, height: 256)
                    
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
