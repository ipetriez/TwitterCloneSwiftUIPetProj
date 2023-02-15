//
//  FeedView.swift
//  TwitterCloneSwiftUIPetProj
//
//  Created by Sergey Petrosyan on 15.02.23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<20) { _ in
                    TweetRowView()
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
