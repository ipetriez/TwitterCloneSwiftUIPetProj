//
//  AuthViewModel.swift
//  TwitterCloneSwiftUIPetProj
//
//  Created by Sergey Petrosyan on 21.03.23.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String) {
        print("DEBUG: Login in with email: \(email) and password: \(password)")
    }
    
    func register(withEmail email: String, password: String, fullName: String, userName: String) {
        print("DEBUG: Registering with email: \(email), password: \(password), fullName: \(fullName) and userName: \(userName)")
    }
}
