//
//  HomeCardGrid.swift
//  Note
//
//  Created by Srikant on 18/02/23.
//

import SwiftUI

struct HomeNoteCardGrid: View {
    
    var body: some View {
        Grid {
            GridRow {
                NavigationLink {
                    NotesView()
                } label: {
                    HomeNoteCard(title: "Notes", count: 6, icon: "note", color: Color.green)
                }
                
                NavigationLink {
                    NotesView()
                } label: {
                    HomeNoteCard(title: "Reminders", count: 2, icon: "calendar", color: Color.yellow)
                }
            }
            
            GridRow {
                NavigationLink {
                    NotesView()
                } label: {
                    HomeNoteCard(title: "Archived", count: 3, icon: "archivebox", color: Color.blue)
                }
                
                NavigationLink {
                    NotesView()
                } label: {
                    HomeNoteCard(title: "Deleted", count: 1, icon: "xmark.bin", color: Color.red)
                }
            }
        }
        .padding()
    }
}

struct HomeCardGrid_Previews: PreviewProvider {
    static var previews: some View {
        HomeNoteCardGrid()
    }
}
