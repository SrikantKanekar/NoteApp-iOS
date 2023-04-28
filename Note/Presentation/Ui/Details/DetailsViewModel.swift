//
//  DetailsViewModel.swift
//  Note
//
//  Created by Srikant on 28/04/23.
//

import Foundation

final class DetailsViewModel: ObservableObject {
    
    @Published var titleText = "Title"
    @Published var bodyText = "This is some editable text..."
    
    @Published var showingAddOptions = false
    @Published var showingColorOptions = false
    @Published var showingMoreOptions = false
}
