//
//  AdvertisingView.swift
//  MyApp
//
//  Created by Viktoriia Sharukhina on 27.02.2023.
//

import SwiftUI

struct AdvertisingView: View {
    
    var nameSection: String
    var nameApp: String
    var description: String
    
    var image: String
    
    var icon: String
    
    var fullNameApp: String
    var descriptionApp: String
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(nameSection)
                .textCase(.uppercase)
                .font(.system(size: 12, weight: .bold))
                .foregroundColor(.blue)
            Text(nameApp)
                .font(.system(size: 20))
            Text(description)
                .font(.system(size: 20))
                .foregroundColor(.gray)
            
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
                Image(image)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width * 0.85, height: 200)
                    .scaledToFill()
                HStack(alignment: .center) {
                    Image(icon)
                        .resizable()
                        .frame(width: 44, height: 44)
                        .cornerRadius(10)
                    VStack {
                        Text(fullNameApp)
                            .font(.system(size: 16, weight: .bold))
                        Text(descriptionApp)
                            .font(.system(size: 16, weight: .medium))
                    }
                    .padding(10)
                    
                    Spacer()
                    
                    Image(systemName: "icloud.and.arrow.down")
                        .bold()
                        .padding(.trailing, 10)
                }
                .padding(10)
                .background(Color.gray.opacity(0.6)
                    .blur(radius: 20))
                .foregroundColor(.white)
            }
        }
    }
}
