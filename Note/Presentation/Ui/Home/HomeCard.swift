//
//  HomeCard.swift
//  Note
//
//  Created by Srikant on 17/02/23.
//

import SwiftUI

struct HomeCard: View {
    var text: String
    var count: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "calendar")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color.red)
                    .clipShape(Circle())
                Spacer()
                Text(count.description)
                    .font(.title)
                    .bold()
            }
            Text(text)
                .font(.title2)
                .bold()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 1)
    }
}

struct HomeCard_Previews: PreviewProvider {
    static var previews: some View {
        HomeCard(text: "Reminders", count: 4)
    }
}
