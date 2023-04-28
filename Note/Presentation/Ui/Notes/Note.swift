//
//  Note.swift
//  Note
//
//  Created by Srikant on 28/04/23.
//

import Foundation

struct Note: Identifiable {
    let id: String
    let title: String
    let body: String
    let updatedAt: String
    let createdAt: String
    let state: NoteState = NoteState.ACTIVE
    let pinned: Bool = false
    let color: Int = 0
    let labels: [String] = [String]()
}
