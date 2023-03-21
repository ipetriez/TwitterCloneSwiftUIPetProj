//
//  SideMenuItemView.swift
//  TwitterCloneSwiftUIPetProj
//
//  Created by Sergey Petrosyan on 20.02.23.
//

import SwiftUI

struct SideMenuItemView: View {
    let menuItem: SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: menuItem.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(menuItem.title)
                .foregroundColor(.black)
                .font(.subheadline)
            
            Spacer()
        }
        .frame(height: 40)
        .padding(.horizontal)
    }
}

struct SideMenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuItemView(menuItem: .profile)
    }
}
