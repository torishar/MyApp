//
//  AppView.swift
//  MyApp
//
//  Created by Viktoriia Sharukhina on 26.02.2023.
//

import SwiftUI

struct AppView: View {
    
    let favorites: [FavoritesView] = [
        FavoritesView(icon: "appIcon", nameApp: "Название 1", descriptoinApp: "Описание 1", textBtn: "Открыть"),
        FavoritesView(icon: "appIcon", nameApp: "Название 2", descriptoinApp: "Описание 2", textBtn: "Загрузить"),
        FavoritesView(icon: "appIcon", nameApp: "Название 3", descriptoinApp: "Описание 3", textBtn: "Открыть"),
        FavoritesView(icon: "appIcon", nameApp: "Название 4", descriptoinApp: "Описание 4", textBtn: "Открыть"),
        FavoritesView(icon: "appIcon", nameApp: "Название 5", descriptoinApp: "Описание 5", textBtn: "Загрузить"),
        FavoritesView(icon: "appIcon", nameApp: "Название 6", descriptoinApp: "Описание 6", textBtn: "Загрузить"),
        FavoritesView(icon: "appIcon", nameApp: "Название 7", descriptoinApp: "Описание 7", textBtn: "Загрузить"),
        FavoritesView(icon: "appIcon", nameApp: "Название 8", descriptoinApp: "Описание 8", textBtn: "Загрузить")
        ]
    
    let rows = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            
            VStack {
                
//MARK: -- Header
                HStack {
                    Text("Приложения")
                        .font(.system(size: 26, weight: .black))
                    Spacer()
                    Image("photoUsers")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 48)
                        .clipShape(Circle())
                }
                .padding(.horizontal, 15)
                
                Divider()
                
//MARK: -- Advertising
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        AdvertisingView(nameSection: "Что посмотреть", nameApp: "Название приложения", description: "Описание", image: "film1", icon: "appIcon", fullNameApp: "Название 1", descriptionApp: "Описание 1")
                        AdvertisingView(nameSection: "Избранное", nameApp: "Название приложения", description: "Описание", image: "film2", icon: "appIcon", fullNameApp: "Название 2", descriptionApp: "Описание 2")
                    }
                    .padding(.horizontal, 15)
                }
                
                Divider()
                    .padding(16)
                
    //MARK: -- Sections
                VStack {
                    HStack {
                        Text("Избранное за неделю")
                            .font(.system(size: 20, weight: .bold))
                        
                        Spacer()
                        
                        Button {
                            //
                        } label: {
                            Text("Все")
                        }

                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: rows, spacing: 20) {
                            ForEach(favorites, id: \.self) { favorite in
                                FavoritesView(icon: favorite.icon,
                                          nameApp: favorite.nameApp,
                                          descriptoinApp: favorite.descriptoinApp,
                                          textBtn: favorite.textBtn)
                            }
                            
                        }
                        .frame(height: 230)
                    }
                    
                }
                .padding(.horizontal, 15)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
