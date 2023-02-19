//
//  HomeCard.swift
//  Note
//
//  Created by Srikant on 17/02/23.
//

import SwiftUI

struct HomeNoteCard: View {
    var title: String
    var count: Int
    var icon: String
    var color: Color
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: icon)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                    .padding(9)
                    .background(color)
                    .clipShape(Circle())
                Spacer()
                Text(count.description)
                    .font(.title)
                    .bold()
                    .foregroundColor(.primary)
            }
            Text(title)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
                .lineLimit(1)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 12)
        .background(Color("ListSurfaceColor"))
        .cornerRadius(15)
    }
}

struct HomeCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeNoteCard(title: "Reminders", count: 4, icon: "calendar", color: Color.red)
    }
}
