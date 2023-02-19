//
//  LabelsView.swift
//  Note
//
//  Created by Srikant on 16/02/23.
//

import SwiftUI

struct LabelsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("My Labels")
                .font(.title)
                .fontWeight(.bold)
                .padding(.leading, 24)
            
            ForEach(1..<5) { i in
                NavigationLink {
                    Text("Label")
                } label: {
                    HStack {
                        Text("Label \(i)")
                            .font(.title3)
                        Spacer()
                    }
                    .padding(.horizontal, 18)
                    .padding(.vertical, 8)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 1)
                    .padding(.horizontal, 16)
                    
                }.buttonStyle(PlainButtonStyle())
            }
        }
    }
}

struct LabelsView_Previews: PreviewProvider {
    static var previews: some View {
        LabelsView()
    }
}
