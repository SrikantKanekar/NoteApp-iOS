//
//  LabelEditItem.swift
//  Note
//
//  Created by Srikant on 16/02/23.
//

import SwiftUI

struct LabelEditSheet: View {
    
    @StateObject private var viewModel = LabelEditViewModel()
    @Binding var isShowingSheet: Bool
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    isShowingSheet = false
                } label: {
                    Text("Cancel")
                }
                
                Spacer()
                
                Text("Label")
                    .font(.title2)
                    .bold()
                
                Spacer()
                
                Button {
                    isShowingSheet = false
                } label: {
                    Text("Done")
                }
            }
            .padding(.horizontal, 6)
            .padding(.bottom)
            
            VStack(alignment: .center, spacing: 30) {
                Image(systemName: "list.bullet")
                    .resizable()
                    .frame(width: 50, height: 40)
                    .foregroundColor(.white)
                    .padding(30)
                    .background(Color.blue)
                    .clipShape(Circle())
                
                TextField("Label Name", text: $viewModel.labelName)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 35)
                    .padding(.vertical, 15)
                    .background(Color("SearchSurfaceColor"))
                    .cornerRadius(15)
                
            }
            .padding(25)
            .background(Color("ListSurfaceColor"))
            .cornerRadius(15)
            
            Spacer()
        }
        .padding()
        .background(Color("ListBackgroundColor"))
    }
}

struct LabelEditItem_Previews: PreviewProvider {
    static var previews: some View {
        LabelEditSheet(isShowingSheet: .constant(true))
    }
}
