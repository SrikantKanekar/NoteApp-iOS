//
//  NoteCard.swift
//  Note
//
//  Created by Srikant on 15/02/23.
//

import SwiftUI

struct NoteCard: View {
    
    @State var note: Note
    
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text(note.title)
                    .font(.largeTitle)
                    .foregroundColor(.primary)
                Text(note.body)
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
        
        let note = Note(
            id: "2474abea-7584-486b-9f88-87a21870b0ec",
            title: "Vancouver PNE 2019",
            body: "Here is Jess and I at the Vancouver PNE. We ate a lot of food.",
            updatedAt: "2019-04-14 08:41:22 AM",
            createdAt: "2019-04-14 07:05:11 AM"
        )
        
        NoteCard(note: note)
    }
}
