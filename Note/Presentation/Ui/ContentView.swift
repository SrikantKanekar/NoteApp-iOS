//
//  ContentView.swift
//  Note
//
//  Created by Admin on 14/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                HomeCardGrid()
                LabelsView()
            }
            .searchable(text: $text)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    Button {
                        
                    } label: {
                        Label("User", systemImage: "person.circle")
                    }
                }
                ToolbarItemGroup(placement: .bottomBar) {
                    NavigationLink {
                        DetailsView()
                    } label: {
                        Text("New note")
                    }
                    NavigationLink {
                        Text("Label")
                    } label: {
                        Text("Add label")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
