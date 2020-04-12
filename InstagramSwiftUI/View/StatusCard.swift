//
//  StatusCard.swift
//  InstagramSwiftUI
//
//  Created by Pushpank Kumar on 12/04/20.
//  Copyright © 2020 Pushpank Kumar. All rights reserved.
//

import SwiftUI

struct StatusCard: View {
    var imageName = ""
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 60, height: 60)
            .clipShape(Circle())
    }
}

