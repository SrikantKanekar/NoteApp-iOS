//
//  Sidebar.swift
//  Note
//
//  Created by Srikant on 15/02/23.
//

import SwiftUI

struct Sidebar: View {
    var body: some View {
        NavigationView {
            List {
                Label("Notes", systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("Note")
        }
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
