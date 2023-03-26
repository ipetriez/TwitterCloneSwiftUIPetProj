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
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] result, error in
            if let error = error {
                print("DEBUG: Failed to log in with error \(error.localizedDescription)")
            }
            
            guard let user = result?.user else { return }
            self?.userSession = user
            print("DEBUG: Logged in with email: \(email) and password: \(password)")
        }
    }
    
    func register(withEmail email: String, password: String, fullName: String, userName: String, completion: @escaping () -> Void) {
        print("DEBUG: Registering with email: \(email), password: \(password), fullName: \(fullName) and userName: \(userName)")
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            if let error = error {
                print("DEBUG: Failed to register with error \(error.localizedDescription)")
            }
            
            guard let user = result?.user else { return }
            self?.userSession = user
            let data = ["email": email, "userName": userName.lowercased(), "fullName": fullName, "uid": user.uid]
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data) { _ in
                    print("DEBUG: Did upload user data...")
                }
            completion()
        }
    }
    
    func signOUt() {
        userSession = nil
        try? Auth.auth().signOut()
    }
}
