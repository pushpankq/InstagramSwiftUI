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
                    }
                }
                
                ForEach(0..<8) { _ in
                    PostCard()
                }
            }
        }.sheet(isPresented: $show) {
            StatusView(url: self.url , name: self.user)
        }
    }
}
