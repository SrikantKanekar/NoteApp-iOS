//
//  LabelsView.swift
//  Note
//
//  Created by Srikant on 16/02/23.
//

import SwiftUI

struct LabelsView: View {
    var body: some View {
        NavigationView {
            List {
                LabelEditItem()
                LabelEditItem()
                LabelEditItem()
            }.navigationTitle("Edit labels")
        }
    }
}

struct LabelsView_Previews: PreviewProvider {
    static var previews: some View {
        LabelsView()
    }
}
