//
//  UserStatsView.swift
//  TwitterCloneSwiftUIPetProj
//
//  Created by Sergey Petrosyan on 20.02.23.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 30) {
            HStack(spacing: 4) {
                Text("10")
                    .font(.subheadline).bold()
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack(spacing: 4) {
                Text("12")
                    .font(.subheadline).bold()
                
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
        .padding(.vertical)
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
