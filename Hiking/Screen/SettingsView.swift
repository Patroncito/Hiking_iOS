//
//  SettingsView.swift
//  Hiking
//
//  Created by Alfonso Patron on 04/01/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        
        List {
            Section{
                HStack{
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        
                        Text("Editor´s Choise")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                
                .foregroundStyle(LinearGradient(colors: [.colorGreenLight, .colorGreenMedium], startPoint: .top, endPoint: .bottom))
                
                VStack(spacing: 8){
                    Text("Where can you find perfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hiking looks great in the photograph, but the places are even more beautiful than the photographs.\nEnjoy your day with Hike App")
                        .font(.footnote)
                        .italic()
                    
                    Text("Ready your water bottle? Let's go.")
                        .fontWeight(.bold)
                        .foregroundStyle(.colorGreenMedium)
                }
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .padding(.bottom, 16)
            }
            .listRowSeparator(.hidden)
            
        }
    }
}

#Preview {
    SettingsView()
}
