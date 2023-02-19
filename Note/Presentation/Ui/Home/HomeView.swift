//
//  HomeView.swift
//  Note
//
//  Created by Srikant on 19/02/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var text: String = ""
    @State private var isShowingSheet: Bool = false

    var body: some View {
        ScrollView {
            HomeNoteCardGrid()
            HomeLabelList()
        }
        .background(Color("ListBackgroundColor"))
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
                Button("Add label") {
                    isShowingSheet.toggle()
                }
                .sheet(isPresented: $isShowingSheet) {
                    LabelEditSheet()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
