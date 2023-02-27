//
//  CardsView.swift
//  MyApp
//
//  Created by Viktoriia Sharukhina on 27.02.2023.
//

import SwiftUI

struct CardsView: View {
    
    var icons: String
    var titleCards: String
    var descriptionCards: String
    var colorCards: String
    var body: some View {
        VStack(alignment: .leading) {
            Image(icons)
                .resizable()
                .frame(width: 20, height: 20)
                .padding(.top, 30)
            VStack(alignment: .leading) {
                Text(titleCards)
                    .font(.system(size: 12, weight: .bold))
                Text(descriptionCards)
                    .font(.system(size: 12, weight: .medium))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.horizontal, 13)
        .padding(.vertical, 20)
        .background(Color(colorCards))
        .foregroundColor(.white)
        .cornerRadius(20)
    }
}
