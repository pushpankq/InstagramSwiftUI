//
//  Home.swift
//  InstagramSwiftUI
//
//  Created by Pushpank Kumar on 12/04/20.
//  Copyright © 2020 Pushpank Kumar. All rights reserved.
//

import SwiftUI

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
