//
//  DetailsView.swift
//  Note
//
//  Created by Srikant on 16/02/23.
//

import SwiftUI

struct DetailsView: View {
    @State private var titleText: String = "Title"
    @State private var bodyText: String = "This is some editable text..."
    
    @State private var showingAddOptions: Bool = false
    @State private var showingColorOptions: Bool = false
    @State private var showingMoreOptions: Bool = false
    
    var body: some View {
        VStack {
            TextField("Title", text: $titleText)
                .font(.largeTitle)
            TextEditor(text: $bodyText)
        }
        .padding()
        .navigationBarTitle("", displayMode: .inline)
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                Button {
                    
                } label: {
                    Label("pin", systemImage: "pin")
                }
                Button {
                    
                } label: {
                    Label("reminder", systemImage: "alarm")
                }
                Button {
                    
                } label: {
                    Label("archive", systemImage: "archivebox")
                }
            }
            ToolbarItemGroup(placement: .bottomBar) {
                Button(
                    action: {
                        showingAddOptions.toggle()
                    },
                    label: {
                        Label("Add", systemImage: "plus.app")
                    }
                )
                .confirmationDialog("Add", isPresented: $showingAddOptions, titleVisibility: .hidden) {
                    Button("Take photo") {}
                    Button("Add image") {}
                    Button("Drawing") {}
                    Button("Recording") {}
                    Button("Tick boxes") {}
                }
                Button(
                    action: {
                        showingColorOptions.toggle()
                    },
                    label: {
                        Label("Color", systemImage: "paintpalette")
                    }
                )
                .confirmationDialog("color", isPresented: $showingColorOptions, titleVisibility: .hidden) {
                    Button("Colour") {}
                    Button("Background") {}
                }
                Button(
                    action: {
                        showingMoreOptions.toggle()
                    },
                    label: {
                        Label("More", systemImage: "ellipsis.circle")
                    }
                )
                .confirmationDialog("more", isPresented: $showingMoreOptions, titleVisibility: .hidden) {
                    Button("Delete") {}
                    Button("Make a copy") {}
                    Button("Send") {}
                    Button("Collaborator") {}
                    Button("Labels") {}
                }
            }
            ToolbarItemGroup(placement: .status) {
                Text("Edited 12 Jan 2023")
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
