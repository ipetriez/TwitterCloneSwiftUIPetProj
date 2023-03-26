//
//  SideMenuView.swift
//  TwitterCloneSwiftUIPetProj
//
//  Created by Sergey Petrosyan on 20.02.23.
//

import SwiftUI

struct SideMenuView: View {
    
    @EnvironmentObject var authViewModel: AuthViewModel
    
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
                if menuItem == .profile {
                    NavigationLink(destination: ProfileView()) {
                        SideMenuItemView(menuItem: menuItem)
                    }
                } else if menuItem == .logout {
                    Button {
                        authViewModel.signOUt()
                    } label: {
                        SideMenuItemView(menuItem: menuItem)
                    }
                } else {
                    SideMenuItemView(menuItem: menuItem)
                }
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
