//
//  TweetRowView.swift
//  TwitterCloneSwiftUIPetProj
//
//  Created by Sergey Petrosyan on 15.02.23.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        HStack(alignment: .top) {
            Circle()
                .frame(width: 56, height: 56)
            VStack(alignment: .leading) {
                HStack {
                    Text("Bruce Wayne")
                        .font(.subheadline)
                    
                    Text("@batman")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text("@49w")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                HStack {
                    Text("This is my awesome tweet about love, freedom and death.")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
                
                HStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "bubble.left")
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "heart")
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "bookmark")
                    }
                }
                .foregroundColor(.gray)
                .padding(.vertical)
                
                Divider()
            }
            .padding(.horizontal)
        }
        .padding()
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
