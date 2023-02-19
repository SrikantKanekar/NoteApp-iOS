//
//  NoteCard.swift
//  Note
//
//  Created by Srikant on 15/02/23.
//

import SwiftUI

struct NoteCard: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("Title")
                    .font(.largeTitle)
                    .foregroundColor(.primary)
                Text("This is a body")
                    .font(.body)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
        .frame(minHeight: 150, alignment: .topLeading)
        .padding()
        .background(Color("ListSurfaceColor"))
        .cornerRadius(10)
    }
}

struct NoteCard_Previews: PreviewProvider {
    static var previews: some View {
        NoteCard()
    }
}
