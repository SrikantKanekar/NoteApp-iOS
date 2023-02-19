//
//  HomeCardGrid.swift
//  Note
//
//  Created by Srikant on 18/02/23.
//

import SwiftUI

struct HomeCardGrid: View {
    
    private var twoColumnGrid = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        Grid {
            GridRow {
                NavigationLink {
                    NotesView()
                } label: {
                    HomeCard(text: "All", count: 6)
                }.buttonStyle(PlainButtonStyle())
                
                NavigationLink {
                    NotesView()
                } label: {
                    HomeCard(text: "Reminders", count: 2)
                }.buttonStyle(PlainButtonStyle())
            }
            
            GridRow {
                NavigationLink {
                    NotesView()
                } label: {
                    HomeCard(text: "Notes", count: 3)
                }.buttonStyle(PlainButtonStyle())
                
                NavigationLink {
                    NotesView()
                } label: {
                    HomeCard(text: "Archived", count: 1)
                }.buttonStyle(PlainButtonStyle())
            }
        }
        .padding()
    }
}

struct HomeCardGrid_Previews: PreviewProvider {
    static var previews: some View {
        HomeCardGrid()
    }
}
