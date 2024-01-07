//
//  CustomListRowView.swift
//  Hiking
//
//  Created by Alfonso Patron on 05/01/24.
//

import SwiftUI

struct CustomListRowView: View {
    
    @State var rowLabel : String
    @State var rowIcon : String
    @State var rowContent : String? = nil
    @State var rowTintColor : Color
    @State var rowLinkLabel : String? = nil
    @State var rowLinkDestination : String? = nil

    
    var body: some View {
     
        
        LabeledContent {
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundStyle(.primary)
                .fontWeight(.heavy)
            } else if(rowLinkLabel != nil && rowLinkDestination != nil) {
                Link(rowLinkLabel!, destination: URL(string: rowLinkDestination!)!)
                    .foregroundStyle(.pink)
                    .fontWeight(.heavy)
            } else {
                EmptyView()
            }
        } label: {
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                    
                }
                Text(rowLabel)
            }
           
        }
        .padding(.vertical, 10)

        
    }
}

#Preview {
    List {
        CustomListRowView(rowLabel: "Website", rowIcon: "globe",rowContent: nil, rowTintColor: Color.red, rowLinkLabel: "Patromy", rowLinkDestination: "https://www.linkedin.com/in/alfonsopatron/")
         
    }
}

//
//rowLabel: "",
//rowIcon: "",
//rowContent: "",
//rowTintColor: Color.red
