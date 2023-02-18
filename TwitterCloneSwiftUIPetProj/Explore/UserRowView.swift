//
//  UserRowView.swift
//  TwitterCloneSwiftUIPetProj
//
//  Created by Sergey Petrosyan on 18.02.23.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("joker")
                    .font(.subheadline).bold()
                
                Text("Joking is my profession")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding()
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
