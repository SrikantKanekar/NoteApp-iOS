//
//  Searchbar.swift
//  Note
//
//  Created by Srikant on 15/02/23.
//

import SwiftUI

struct SearchBar: View {
    @State private var text: String = ""
    
    var body: some View {
        NavigationSplitView {
                    Text(text)
                } content: {
                    Text(text)
                } detail: {
                    Text(text)
                }
                .searchable(text: $text)
    }
}

struct Searchbar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
