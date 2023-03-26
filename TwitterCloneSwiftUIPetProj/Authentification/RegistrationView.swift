//
//  RegistrationView.swift
//  TwitterCloneSwiftUIPetProj
//
//  Created by Sergey Petrosyan on 18.03.23.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email = ""
    @State private var username = ""
    @State private var fullName = ""
    @State private var password = ""
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var authViewModel: AuthViewModel
    
    var body: some View {
        VStack {
            AuthHeaderView(title1: "Get started.", title2: "Create your account.")
            
            VStack(spacing: 40) {
                CustomInputField(imageName: "envelope", placeholderText: "Email", isSecureField: false, text: $email)
                
                CustomInputField(imageName: "person", placeholderText: "User name", isSecureField: false, text: $username)
                
                CustomInputField(imageName: "person", placeholderText: "Full name", isSecureField: false, text: $fullName)
                
                CustomInputField(imageName: "lock", placeholderText: "Password", isSecureField: true, text: $password)
            }
            .padding(32)
            
            CapsuleShapedButton(title: "Sign up") {
                authViewModel.register(withEmail: email, password: password, fullName: fullName, userName: username, completion: { presentationMode.wrappedValue.dismiss() })
            }
            
            Spacer()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                        .font(.footnote)

                    
                    Text("Sign In")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
            }
            .padding(.bottom, 32)
            .foregroundColor(Color(.systemBlue))

        }
        .ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
