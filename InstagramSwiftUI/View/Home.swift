//
//  Home.swift
//  InstagramSwiftUI
//
//  Created by Pushpank Kumar on 12/04/20.
//  Copyright © 2020 Pushpank Kumar. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct Home: View {
    
    @ObservedObject var statusViewModel = StatusViewModel()
    @ObservedObject var postViewModel = PostViewModel()
    
    @State var show = false
    @State var user = ""
    @State var url = ""
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(statusViewModel.status) { status  in
                            StatusCard(imageName: status.image, user: status.name, show: self.$show, user1: self.$user, url: self.$url).padding(.leading, 8)
                        }
                    }.animation(.spring())
                }
                
                if postViewModel.posts.isEmpty{
                    Text("No Posts").fontWeight(.heavy)
                }
                else{

                    ForEach(postViewModel.posts){ post in
                        PostCard(user: post.name, image: post.image, id: post.id, likes: post.likes, comments:  post.comments)
                    }
                }
            }
        }.sheet(isPresented: $show) {
            StatusView(url: self.url , name: self.user)
        }
    }
}
