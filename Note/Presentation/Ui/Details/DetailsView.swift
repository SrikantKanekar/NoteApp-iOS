//
//  DetailsView.swift
//  Note
//
//  Created by Srikant on 16/02/23.
//

import SwiftUI

struct DetailsView: View {
    
    @StateObject private var viewModel = DetailsViewModel()
    
    var body: some View {
        VStack {
            TextField("Title", text: $viewModel.titleText)
                .font(.largeTitle)
            TextEditor(text: $viewModel.bodyText)
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
                        viewModel.showingAddOptions.toggle()
                    },
                    label: {
                        Label("Add", systemImage: "plus.app")
                    }
                )
                .confirmationDialog("Add", isPresented: $viewModel.showingAddOptions, titleVisibility: .hidden) {
                    Button("Take photo") {}
                    Button("Add image") {}
                    Button("Drawing") {}
                    Button("Recording") {}
                    Button("Tick boxes") {}
                }
                Button(
                    action: {
                        viewModel.showingColorOptions.toggle()
                    },
                    label: {
                        Label("Color", systemImage: "paintpalette")
                    }
                )
                .confirmationDialog("color", isPresented: $viewModel.showingColorOptions, titleVisibility: .hidden) {
                    Button("Colour") {}
                    Button("Background") {}
                }
                Button(
                    action: {
                        viewModel.showingMoreOptions.toggle()
                    },
                    label: {
                        Label("More", systemImage: "ellipsis.circle")
                    }
                )
                .confirmationDialog("more", isPresented: $viewModel.showingMoreOptions, titleVisibility: .hidden) {
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
