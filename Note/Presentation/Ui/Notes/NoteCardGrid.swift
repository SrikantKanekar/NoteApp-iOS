//
//  NoteCardGrid.swift
//  Note
//
//  Created by Srikant on 19/02/23.
//

import SwiftUI

struct NoteCardGrid: View {
    
    let columns = Array(repeating: GridItem(.flexible(), spacing: 15, alignment: .center), count: 2)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 15) {
                ForEach(0..<15) { item in
                    NavigationLink {
                        DetailsView()
                    } label: {
                        NoteCard()
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
        NoteCardGrid()
    }
}
