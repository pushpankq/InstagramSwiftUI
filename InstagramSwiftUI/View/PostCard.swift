//
//  PostCard.swift
//  InstagramSwiftUI
//
//  Created by Pushpank Kumar on 12/04/20.
//  Copyright © 2020 Pushpank Kumar. All rights reserved.
//

import SwiftUI
import Firebase
import SDWebImageSwiftUI

struct PostCard: View {
    
    var user = ""
    var image = ""
    var id  = ""
    var likes = ""
    var comments = ""
    var body: some View {
        VStack(alignment: .leading, content: {
            HStack {
                AnimatedImage(url: URL(string: image))
                    .resizable().frame(width: 30, height: 30).clipShape(Circle())
                Text(user)
                Spacer()
                Button(action: {
                    
                }) {
                    Image("menu").resizable().frame(width: 15, height: 15)
                }.foregroundColor(Color("darkAndWhite"))
            }
            
            AnimatedImage(url: URL(string: image)).resizable().frame(height: 350)
            HStack {
                Button(action: {
                    
                }) {
                    Image("comment").resizable().frame(width: 26, height: 26)
                }.foregroundColor(Color("darkAndWhite"))
                
                Button(action: {
                    
                    // update likes
                    let database = Firestore.firestore()
                    let like = Int.init(self.likes)!
                    database.collection("posts").document(self.id).updateData(["likes" : "\(like+1)"]) { (error) in
                        if error != nil{
                            
                            print((error))
                            return
                        }
                    }
                    
                }) {
                    Image("heart").resizable().frame(width: 26, height: 26)
                }.foregroundColor(Color("darkAndWhite"))
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image("saved").resizable().frame(width: 30, height: 30)
                }.foregroundColor(Color("darkAndWhite"))
                
            }.padding(.top, 8)
            
            Text("\(likes) Likes").padding(.top, 8)
            Text("View all \(comments) comments ")
            
        }).padding(8)
    }
}
