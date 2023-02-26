//
//  AppView.swift
//  MyApp
//
//  Created by Viktoriia Sharukhina on 26.02.2023.
//

import SwiftUI

struct AppView: View {
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
                        Advertising(nameSection: "Что посмотреть", nameApp: "Название приложения", description: "Описание", image: "film1", icon: "appIcon", fullNameApp: "Название 1", descriptionApp: "Описание 1")
                        Advertising(nameSection: "Избранное", nameApp: "Название приложения", description: "Описание", image: "film2", icon: "appIcon", fullNameApp: "Название 2", descriptionApp: "Описание 2")
                    }
                    .padding(.horizontal, 15)
                }
                
                Divider()
                
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
                        HStack (alignment: .top) {
                            VStack {
                                Favorites(icon: "appIcon", nameApp: "Название 1", descriptoinApp: "Описание 1", textBtn: "Открыть")
                                Favorites(icon: "appIcon", nameApp: "Название 1", descriptoinApp: "Описание 1", textBtn: "Загрузить")
                                Favorites(icon: "appIcon", nameApp: "Название 1", descriptoinApp: "Описание 1", textBtn: "Открыть")
                            }
                            VStack {
                                Favorites(icon: "appIcon", nameApp: "Название 1", descriptoinApp: "Описание 1", textBtn: "Открыть")
                                Favorites(icon: "appIcon", nameApp: "Название 1", descriptoinApp: "Описание 1", textBtn: "Загрузить")
                                
                            }
                            
                        }
                    }
                    
                }
                .padding(.horizontal, 15)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct Advertising: View {
    
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
                HStack {
                    HStack (alignment: .top) {
                        Image(icon)
                            .resizable()
                            .frame(width: 44, height: 44)
                            .cornerRadius(10)
                            .offset(x: 10, y: -10)
                        VStack {
                            Text(fullNameApp)
                                .font(.system(size: 16, weight: .bold))
                            Text(descriptionApp)
                                .font(.system(size: 16, weight: .medium))
                        }
                    }
                    
                    Spacer()
                    
                    Image(systemName: "icloud.and.arrow.down")
                        .bold()
                }
                .background(Color.gray.opacity(0.6)
                    .blur(radius: 20))
                .foregroundColor(.white)
            }
        }
    }
}



struct Favorites: View {
    
    var icon: String
    var nameApp: String
    var descriptoinApp: String
    var textBtn: String
    
    var body: some View {
        HStack {
            Image(icon)
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
            HStack {
                VStack (alignment: .leading) {
                    Text(nameApp)
                        .font(.system(size: 20, weight: .regular))
                    Text(descriptoinApp)
                        .font(.system(size: 18))
                        .foregroundColor(.gray)
                    Divider()
                }

               // Spacer()
                
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
        }
        .frame(width: UIScreen.main.bounds.width * 0.85)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
