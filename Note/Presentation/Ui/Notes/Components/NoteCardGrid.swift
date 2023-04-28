//
//  NoteCardGrid.swift
//  Note
//
//  Created by Srikant on 19/02/23.
//

import SwiftUI

struct NoteCardGrid: View {
    
    @Binding var notes: [Note]
    let columns = Array(repeating: GridItem(.flexible(), spacing: 15, alignment: .center), count: 2)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 15) {
                ForEach(notes) { note in
                    NavigationLink {
                        DetailsView()
                    } label: {
                        NoteCard(note: note)
                    }
                }
            }
            .padding()
            .background(Color("ListBackgroundColor"))
        }
    }
}

struct NoteCardGrid_Previews: PreviewProvider {
    static var previews: some View {
        @StateObject var viewModel = NotesViewModel()
        NoteCardGrid(notes: $viewModel.notes)
    }
}
