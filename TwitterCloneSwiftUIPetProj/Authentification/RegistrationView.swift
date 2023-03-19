//
//  RegistrationView.swift
//  TwitterCloneSwiftUIPetProj
//
//  Created by Sergey Petrosyan on 18.03.23.
//

import SwiftUI

struct RegistrationView: View {
    var body: some View {
        VStack {
            AuthHeaderView(title1: "Get started.", title2: "Create your account.")
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
