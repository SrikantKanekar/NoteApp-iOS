//
//  NotesView.swift
//  Note
//
//  Created by Srikant on 15/02/23.
//

import SwiftUI

struct NotesView: View {
    var body: some View {
        NoteCardGrid()
            .navigationTitle("Notes")
            .toolbar() {
                Button {

                } label: {
                    Label("single column", systemImage: "rectangle.grid.1x2")
                }
            }
            .background(Color("ListBackgroundColor"))
    }
}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView()
    }
}
