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
    
    @ObservedObject var observed = Observer()
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(observed.status) { status  in
                            StatusCard(imageName: status.image).padding(.leading, 8)
                        }
                    }
                }
                
                ForEach(0..<8) { _ in
                    PostCard()
                }
            }
        }.animation(.spring())
    }
}
