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
                        ScrollCardView(image: "flowers", text: "Заголовок 1")
                        ScrollCardView(image: "flower", text: "Заголовок 2")
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

                        PhotoUsersView(photo: "photo1")
                        PhotoUsersView(photo: "photo2")
                        PhotoUsersView(photo: "photo3")
                        PhotoUsersView(photo: "photo4")
                        
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
                    CardsView(icons: "mountains", titleCards: "Элемент 1", descriptionCards: "lorem text", colorCards: "blue")
                    CardsView(icons: "house", titleCards: "Элемент 2", descriptionCards: "lorem text", colorCards: "yellow")
                    CardsView(icons: "star", titleCards: "Элемент 3", descriptionCards: "lorem text", colorCards: "red")
                }
                .padding(.horizontal, 15)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
