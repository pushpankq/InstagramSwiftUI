//
//  PostCard.swift
//  InstagramSwiftUI
//
//  Created by Pushpank Kumar on 12/04/20.
//  Copyright © 2020 Pushpank Kumar. All rights reserved.
//

import SwiftUI

struct PostCard: View {

    var user = ""
    var image = ""
    var id  = ""
    var body: some View {
        VStack(alignment: .leading, content: {
            HStack {
                Image("testing").resizable().frame(width: 30, height: 30).clipShape(Circle())
                Text("Hi how are you")
                Spacer()
                Button(action: {
                    
                }) {
                    Image("menu").resizable().frame(width: 15, height: 15)
                }.foregroundColor(Color("darkAndWhite"))
            }

            Image("testing").resizable().frame(height: 350)
            HStack {
                Button(action: {
                    
                }) {
                   Image("comment").resizable().frame(width: 26, height: 26)
                }.foregroundColor(Color("darkAndWhite"))
                
                Button(action: {
                    
                }) {
                   Image("heart").resizable().frame(width: 26, height: 26)
                }.foregroundColor(Color("darkAndWhite"))
                
                Spacer()
                
                Button(action: {
                    
                }) {
                   Image("saved").resizable().frame(width: 30, height: 30)
                }.foregroundColor(Color("darkAndWhite"))

            }.padding(.top, 8)
            
            Text("2 Likes").padding(.top, 8)
            Text("View all 3 comments ")

        }).padding(8)
    }
}
