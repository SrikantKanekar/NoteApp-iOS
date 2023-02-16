//
//  NoteList.swift
//  Note
//
//  Created by Srikant on 15/02/23.
//

import SwiftUI

struct NoteList: View {
    
    private var twoColumnGrid = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        
        
        NavigationView {
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
        }
    }
}

struct NoteList_Previews: PreviewProvider {
    static var previews: some View {
        NoteList()
    }
}
