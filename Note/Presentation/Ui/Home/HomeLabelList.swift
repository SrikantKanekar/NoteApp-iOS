//
//  LabelsView.swift
//  Note
//
//  Created by Srikant on 16/02/23.
//

import SwiftUI

struct HomeLabelList: View {
    
    private var colors = [Color.red, Color.blue, Color.yellow, Color.green]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("My Labels")
                .font(.title2)
                .bold()
                .padding(.leading, 24)
            
            ForEach(1..<6) { label in
                NavigationLink {
                    Text("Label")
                } label: {
                    HStack {
                        Image(systemName: "list.bullet")
                            .resizable()
                            .frame(width: 15, height: 12)
                            .foregroundColor(.white)
                            .padding(9)
                            .background(colors[label%4])
                            .clipShape(Circle())
                        
                        Text("Label \(label)")
                            .font(.title3)
                            .foregroundColor(.primary)
                            .lineLimit(1)
                        
                        Spacer()
                        
                        Text("\(label)")
                            .font(.title3)
                            .foregroundColor(.secondary)
                        
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.secondary)
                    }
                    .padding(.horizontal, 18)
                    .padding(.vertical, 8)
                    .background(Color("ListSurfaceColor"))
                    .cornerRadius(10)
                    .padding(.horizontal, 16)
                    
                }
            }
        }
    }
}

struct LabelsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeLabelList()
    }
}
