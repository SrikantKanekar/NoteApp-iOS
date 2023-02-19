//
//  LabelEditItem.swift
//  Note
//
//  Created by Srikant on 16/02/23.
//

import SwiftUI

struct LabelEditSheet: View {
    @State private var labelName: String = ""
    
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 30) {
                Image(systemName: "list.bullet")
                    .resizable()
                    .frame(width: 50, height: 40)
                    .foregroundColor(.white)
                    .padding(30)
                    .background(Color.blue)
                    .clipShape(Circle())
                
                TextField("Label Name", text: $labelName)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 35)
                    .padding(.vertical, 15)
                    .background(Color("SearchSurfaceColor"))
                    .cornerRadius(15)
                
            }
            .padding(25)
            .background(Color("ListSurfaceColor"))
            .cornerRadius(15)
            
            Spacer()
        }
        .padding()
        .background(Color("ListBackgroundColor"))
    }
}

struct LabelEditItem_Previews: PreviewProvider {
    static var previews: some View {
        LabelEditSheet()
    }
}
