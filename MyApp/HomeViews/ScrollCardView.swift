//
//  ScrollCardView.swift
//  MyApp
//
//  Created by Viktoriia Sharukhina on 27.02.2023.
//

import SwiftUI

struct ScrollCardView: View {
    var image: String
    var text: String
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width * 0.55, height: 105)
            Text(text)
                .font(.system(size: 12, weight: .black))
                .foregroundColor(.white)
                .offset(x: 20, y: -20)
            
        }
        .cornerRadius(20)
    }
}
