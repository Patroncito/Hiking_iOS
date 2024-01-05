//
//  CardView.swift
//  Hiking
//
//  Created by Alfonso Patron on 04/01/24.
//

import SwiftUI


struct CardView: View {
    
    
    //MARK: PROPERTIES
    @State private var randomNumber : Int = 1
    @State private var imageNumber : Int = 1
    
    //MARK: FUNCTIONS
    
    func randomImage () {
        randomNumber = Int.random(in: 1...5)
        imageNumber = randomNumber
    }
    
    var body: some View {
        
    
        
        ZStack {
            CustomBackgroundView()
            VStack() {
                
                VStack(alignment: .leading){
                    
                    HStack {
                        Text("Hiking")
                            .font(.system(size: 52))
                            .fontWeight(.bold)
                        .foregroundStyle(LinearGradient(colors: [.customColorGrayLight, .customColorGrayMedium], startPoint: .top, endPoint: .bottom))
                        
                        Spacer()
                        
                        Button {
                            print("Boton presionado")
                        } label: {
                            CustomButtonView()
                        }
                      
                    }
                    
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
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                }
                
                Button{
                    // Random number
                    randomImage()
                    print(imageNumber)
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors: [.colorGreenLight, .colorGreenMedium], startPoint: .top, endPoint: .bottom))
                        .shadow(color: .black.opacity(0.30), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButtonStyle())
                
            }
        }
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
