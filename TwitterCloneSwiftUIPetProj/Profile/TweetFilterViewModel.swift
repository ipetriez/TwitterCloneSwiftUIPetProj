//
//  TweetFilterViewModel.swift
//  TwitterCloneSwiftUIPetProj
//
//  Created by Sergey Petrosyan on 16.02.23.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable, Identifiable {
    
    case tweets
    case replies
    case likes
    
    var id: Int {
        rawValue
    }
    
    var title: String {
        switch self {
        case .tweets:
            return "Tweets"
        case .replies:
            return "Replies"
        case .likes:
            return "Likes"
        }
    }
}
