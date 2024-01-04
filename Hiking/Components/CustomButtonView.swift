//
//  CustomButtonView.swift
//  Hiking
//
//  Created by Alfonso Patron on 04/01/24.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
       
        ZStack{
       
            Circle()
                 .fill(LinearGradient(colors: [.customGreenLight, .customColorGreenMedium], startPoint: .top, endPoint: .bottom))
            Circle()
                 .stroke(LinearGradient(colors: [.customColorGrayLight, .customColorGrayMedium], startPoint: .top, endPoint: .bottom), lineWidth: 4)
            
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(LinearGradient(colors: [
                    .colorGrayLight, .colorGrayMedium], startPoint: .top, endPoint: .bottom))
        }
        .frame(width: 58, height: 58)


    }
}



#Preview(){
    CustomButtonView()
        
}
