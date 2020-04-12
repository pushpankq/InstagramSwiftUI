//
//  StatusCard.swift
//  InstagramSwiftUI
//
//  Created by Pushpank Kumar on 12/04/20.
//  Copyright © 2020 Pushpank Kumar. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct StatusCard: View {
    
    var imageName = ""
    var user = ""
    @Binding var show : Bool
    @Binding var user1 : String
    @Binding var url : String
    
    var body: some View {
        
        VStack {
            AnimatedImage(url: URL(string: imageName))
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .onTapGesture {
                    self.user1 = self.user
                    self.url = self.imageName
                    self.show.toggle()
            }
            
            Text(user).fontWeight(.light)
        }
    }
}
