//
//  UsersView.swift
//  MyApp
//
//  Created by Viktoriia Sharukhina on 28.02.2023.
//

import SwiftUI

struct UsersView: View {
    var imageUsers: String
    var body: some View {
        Image(imageUsers)
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
    }
}


