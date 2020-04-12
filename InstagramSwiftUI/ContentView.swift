//
//  ContentView.swift
//  InstagramSwiftUI
//
//  Created by Pushpank Kumar on 12/04/20.
//  Copyright © 2020 Pushpank Kumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            NavigationView {
                
                Home()
                    .navigationBarTitle("Instagram")
                    .navigationBarItems(leading: Button(action: {
                        
                    }, label: {
                        Image("cam").resizable().frame(width: 30, height: 30)
                        }).foregroundColor(Color("darkAndWhite"))
                        , trailing:
                        HStack {
                            Button(action: {
                                
                            }) {
                            Image("IGTV").resizable().frame(width: 30, height: 30)

                            }.foregroundColor(Color("darkAndWhite"))
                            
                            Button(action: {
                                
                            }) {
                            Image("send").resizable().frame(width: 30, height: 30)

                            }.foregroundColor(Color("darkAndWhite"))
                        }
                    )
                
            }.tabItem { Image("home") }
                Text("Find").tabItem { Image("find") }
                Text("Upload").tabItem { Image("plus") }
                Text("Likes").tabItem { Image("heart") }
                Text("Profile").tabItem { Image("people") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<5) { _ in
                            StatusCard(imageName: "testing").padding(.leading, 8)
                        }
                    }
                }
                
                ForEach(0..<8) { _ in
                    PostCard()
                }
            }
        }
    }
}

struct StatusCard: View {
    var imageName = ""
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 60, height: 60)
            .clipShape(Circle())
    }
}

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
