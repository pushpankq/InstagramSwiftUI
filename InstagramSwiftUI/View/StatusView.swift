//
//  StatusView.swift
//  InstagramSwiftUI
//
//  Created by Pushpank Kumar on 12/04/20.
//  Copyright © 2020 Pushpank Kumar. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct StatusView: View {
    
    var url = ""
    var name  = ""
    
    var body: some View {
        
        ZStack {
            AnimatedImage(url: URL(string: url))
                .resizable()
            
            VStack {
                HStack {
                    Text(name)
                        .font(.headline)
                        .fontWeight(.heavy)
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

