//
//  HomeViewModel.swift
//  Note
//
//  Created by Srikant on 27/04/23.
//

import Foundation

final class HomeViewModel: ObservableObject {
    
    @Published var text: String = ""
    @Published var isShowingSheet: Bool = false
}
