//
//  HomeView.swift
//  Note
//
//  Created by Srikant on 19/02/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
        ScrollView {
            HomeNoteCardGrid()
            HomeLabelList()
        }
        .background(Color("ListBackgroundColor"))
        .searchable(text: $viewModel.text)
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
                    HStack {
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 14, height: 14)
                            .foregroundColor(Color("BackgroundColor"))
                            .padding(5)
                            .background(.blue)
                            .clipShape(Circle())
                        Text("New note")
                            .bold()
                    }
                }
                Button("Add label") {
                    viewModel.isShowingSheet.toggle()
                }
                .sheet(isPresented: $viewModel.isShowingSheet) {
                    LabelEditSheet(isShowingSheet: $viewModel.isShowingSheet)
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
