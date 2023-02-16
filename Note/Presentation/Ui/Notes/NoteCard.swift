//
//  NoteCard.swift
//  Note
//
//  Created by Srikant on 15/02/23.
//

import SwiftUI

struct NoteCard: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading){
                    Text("title")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                    Text("body")
                        .font(.body)
                        .foregroundColor(.gray)
                }
                Spacer()
            }
        }
        .frame(minHeight: 200, alignment: .topLeading)
        .padding()
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .stroke(lineWidth: 1)
        )
    }
}

struct NoteCard_Previews: PreviewProvider {
    static var previews: some View {
        NoteCard()
    }
}
