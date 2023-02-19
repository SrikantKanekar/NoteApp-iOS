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
    
    var body: some View {
        VStack {
            TextField("Title", text: $titleText)
                .font(.largeTitle)
            TextEditor(text: $bodyText)
        }
        .padding()
        .navigationBarTitle("", displayMode: .inline)
        .toolbar {
            Button {
                
            } label: {
                Label("save", systemImage: "pencil")
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
