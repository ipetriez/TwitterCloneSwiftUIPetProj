//
//  SideMenuView.swift
//  TwitterCloneSwiftUIPetProj
//
//  Created by Sergey Petrosyan on 20.02.23.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading) {
                Circle()
                    .frame(width: 48)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Sergey")
                        .font(.headline)
                    
                    Text("@ipetriez")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                UserStatsView()
                    .padding(.vertical)
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases) { menuItem in
                HStack(spacing: 16) {
                    Image(systemName: menuItem.imageName)
                        .font(.headline)
                        .foregroundColor(.gray)
                    
                    Text(menuItem.title)
                        .font(.subheadline)
                    
                    Spacer()
                }
                .frame(height: 40)
                .padding(.horizontal)
            }
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
