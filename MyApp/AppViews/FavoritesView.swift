//
//  FavoritesView.swift
//  MyApp
//
//  Created by Viktoriia Sharukhina on 27.02.2023.
//

import SwiftUI

struct FavoritesView: View, Hashable {
    
    var icon: String
    var nameApp: String
    var descriptoinApp: String
    var textBtn: String
    
    var body: some View {
        VStack {
            HStack {
                Image(icon)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 58, height: 58)
                
                VStack(alignment: .center) {
                    Text(nameApp)
                        .font(.system(size: 20, weight: .regular))
                    Text(descriptoinApp)
                        .font(.system(size: 18))
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Text(textBtn)
                }
                .frame(width: 100)
                .padding(10)
                .background(Color.gray.opacity(0.27))
                .clipShape(Capsule())
                
            }
            .frame(width: UIScreen.main.bounds.width * 0.85, alignment: .center)
        
            Divider()
                .padding(.leading, 68)
        }
    }
}
