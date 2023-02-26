//
//  HomeView.swift
//  MyApp
//
//  Created by Viktoriia Sharukhina on 25.02.2023.
//

import SwiftUI

struct HomeView: View {
    @State var searchText = ""
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: 25) {
                
//MARK: -- Search
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("Поиск", text: $searchText)
                }
                .padding(13)
                .background(.white)
                .clipShape(Capsule())
                .padding(.horizontal, 15)
                
//MARK: -- Scroll cards
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 13) {
                        ScrollCard(image: "flowers", text: "Заголовок 1")
                        ScrollCard(image: "flower", text: "Заголовок 2")
                    }
                    .padding(.horizontal, 15)
                }
                
//MARK: -- Users
                VStack(alignment: .leading, spacing: 20) {
                    
                    VStack(alignment: .leading) {
                        Text("Заголовок блока")
                            .font(.system(size: 16, weight: .black))
                        Text("описание блока")
                            .font(.system(size: 12))
                    }
                    
                    HStack(spacing: 18) {

                        PhotoUsers(photo: "photo1")
                        PhotoUsers(photo: "photo2")
                        PhotoUsers(photo: "photo3")
                        PhotoUsers(photo: "photo4")
                        
                        Button {
                            //
                        } label: {
                            ZStack {
                                Circle()
                                    .frame(width: 44)
                                Circle()
                                    .frame(width: 40)
                                    .foregroundColor(Color("blue"))
                                Image(systemName: "plus")
                            }
                        }
                    }
                    
                    
                    VStack(alignment: .leading) {
                        Divider()
                        
                        HStack {
                            Text("Total")
                                .font(.system(size: 12, weight: .light))
                            Text("$325")
                                .font(.system(size: 12, weight: .black))
                        }
                    }
                }
                .foregroundColor(.white)
                .padding(20)
                .background(Color("blue"))
                .cornerRadius(20)
                .padding(.horizontal, 15)
//MARK: -- Cards
                HStack {
                    Cards(icons: "mountains", titleCards: "Элемент 1", descriptionCards: "lorem text", colorCards: "blue")
                    Cards(icons: "house", titleCards: "Элемент 2", descriptionCards: "lorem text", colorCards: "yellow")
                    Cards(icons: "star", titleCards: "Элемент 3", descriptionCards: "lorem text", colorCards: "red")
                }
                .padding(.horizontal, 15)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct PhotoUsers: View {
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

struct ScrollCard: View {
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

struct Cards: View {
    
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

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
