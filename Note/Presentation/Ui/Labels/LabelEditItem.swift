//
//  LabelEditItem.swift
//  Note
//
//  Created by Srikant on 16/02/23.
//

import SwiftUI

struct LabelEditItem: View {
    @State private var fullText: String = "This is some editable text..."
    
    var body: some View {
        HStack {
            Image(systemName: "arrowtriangle.forward")
            
            TextField("Label", text: $fullText)
            
            Image(systemName: "arrowtriangle.forward")
        }
        .frame(height: 70)
        .padding([.leading, .trailing], 40)
        .border(Color.black, width: 1)
    }
}

struct LabelEditItem_Previews: PreviewProvider {
    static var previews: some View {
        LabelEditItem()
    }
}
