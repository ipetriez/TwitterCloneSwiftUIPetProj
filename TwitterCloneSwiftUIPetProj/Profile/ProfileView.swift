//
//  ProfileView.swift
//  TwitterCloneSwiftUIPetProj
//
//  Created by Sergey Petrosyan on 16.02.23.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var selectedSection: TweetFilterViewModel = .tweets
    @Namespace var animation
    
    var body: some View {
        VStack (alignment: .leading) {
            headerView
            actionButtons
            userInfo
            tweetFilterBar
            Spacer()
        }
    }
}

extension ProfileView {
    
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()
            VStack {
                Button {
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(x: 16, y: 12)
                }

                Circle()
                    .frame(width: 72, height: 72)
                .offset(x: 16, y: 24)
            }
        }
        .frame(height: 96)
    }
    
    var actionButtons: some View {
        HStack(spacing: 12) {
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            
            Button {
                
            } label: {
                Text("Edit profile")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                    .frame(width: 120, height: 32)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
                
            }
        }
        .padding(.trailing)
    }
    
    var userInfo: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text("Sergey")
                    .font(.title2).bold()
                
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(.blue)
            }
            
            Text("@ipetriez")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Esse quam videri.")
                .font(.subheadline)
                .padding(.vertical)
            
            HStack {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    
                    Text("Yerevan, AM")
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: "link")
                    
                    Text("www.ipetriez.com")
                }
            }
            .font(.caption)
            .foregroundColor(.gray)
            
            HStack(spacing: 30) {
                HStack(spacing: 4) {
                    Text("10")
                        .font(.subheadline).bold()
                    
                    Text("Following")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                HStack(spacing: 4) {
                    Text("12")
                        .font(.subheadline).bold()
                    
                    Text("Followers")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            .padding(.vertical)
        }
        .padding(.horizontal)
    }
    
    var tweetFilterBar: some View {
        HStack {
            ForEach(TweetFilterViewModel.allCases) { section in
                VStack {
                    Text(section.title)
                        .font(.subheadline)
                        .fontWeight(selectedSection == section ? .semibold : .regular)
                        .foregroundColor(selectedSection == section ? .black : .gray)
                    
                    if selectedSection == section {
                        Capsule()
                            .foregroundColor(.blue)
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    } else {
                        Capsule()
                            .foregroundColor(.clear)
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeOut) {
                        self.selectedSection = section
                    }
                }
            }
        }
        .overlay(Divider().offset(x: 0, y: 15))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
