//
//  MainTabView.swift
//  TwitterCloneSwiftUIPetProj
//
//  Created by Sergey Petrosyan on 15.02.23.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            FeedView()
                .tag(0)
                .tabItem({
                    Image(systemName: "house")
                })
                .onTapGesture {
                    self.selectedIndex = 0
                }
            
            ExploreView()
                .tag(1)
                .tabItem({
                    Image(systemName: "magnifyingglass")
                })
                .onTapGesture {
                    self.selectedIndex = 1
                }
            
            NotificationsView()
                .tag(2)
                .tabItem({
                    Image(systemName: "bell")
                })
                .onTapGesture {
                    self.selectedIndex = 2
                }
            
            MessagesView()
                .tag(3)
                .tabItem({
                    Image(systemName: "envelope")
                })
                .onTapGesture {
                    self.selectedIndex = 3
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
