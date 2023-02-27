//
//  PhotoUsersView.swift
//  MyApp
//
//  Created by Viktoriia Sharukhina on 27.02.2023.
//

import SwiftUI

struct PhotoUsersView: View {
    var photo: String
    var body: some View {
        HStack {
            Image(photo)
                .resizable()
                .scaledToFill()
                .frame(width: 44, height: 44)
                .clipShape(Circle())
                .shadow(color: .black.opacity(0.3), radius: 4, x: 4, y: 4)
        }
    }
}

//struct PhotoUsersView_Previews: PreviewProvider {
//    static var previews: some View {
//        PhotoUsersView()
//    }
//}
