//
//  NotesView.swift
//  Note
//
//  Created by Srikant on 15/02/23.
//

import SwiftUI

struct NotesView: View {
    
    private var twoColumnGrid = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: twoColumnGrid) {
                ForEach(0..<15) { item in
                    NavigationLink {
                        DetailsView()
                    } label: {
                        NoteCard()
                    }
                }
            }.padding()
        }
        .navigationTitle("Notes")
        .toolbar() {
            Button {
                print("archive tapped")
            } label: {
                Label("archive", systemImage: "archivebox")
            }
        }
    }
}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView()
    }
}
