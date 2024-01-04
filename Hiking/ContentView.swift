//
//  ContentView.swift
//  Hiking
//
//  Created by Alfonso Patron on 04/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("image-3")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Play Guittar Guy")
                .font(.largeTitle)
                .bold()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
