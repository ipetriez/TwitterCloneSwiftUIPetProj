//
//  CapsuleShapedButton.swift
//  TwitterCloneSwiftUIPetProj
//
//  Created by Sergey Petrosyan on 19.03.23.
//

import SwiftUI

struct CapsuleShapedButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .frame(width: 340, height: 50)
                .background(Color(.systemBlue))
                .clipShape(Capsule())
                .padding()
        }
        .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)
    }
}

struct CapsuleShapedButton_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleShapedButton(title: "Sign in", action: { print("Sign in") })
    }
}
