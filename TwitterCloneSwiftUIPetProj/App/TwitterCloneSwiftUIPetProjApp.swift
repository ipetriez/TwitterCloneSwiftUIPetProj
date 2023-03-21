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
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                MainContainerView()
            }
        }
    }
}
