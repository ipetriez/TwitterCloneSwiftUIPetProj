//
//  TwitterCloneSwiftUIPetProjApp.swift
//  TwitterCloneSwiftUIPetProj
//
//  Created by Sergey Petrosyan on 15.02.23.
//

import SwiftUI
import Firebase

@main
struct TwitterCloneSwiftUIPetProjApp: App {
    
    @StateObject var authViewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                MainContainerView()
            }
            .environmentObject(authViewModel)
        }
    }
}
