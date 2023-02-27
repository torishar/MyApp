//
//  ContentView.swift
//  MyApp
//
//  Created by Viktoriia Sharukhina on 25.02.2023.
//

import SwiftUI

struct ContentView: View {
    @State var selectionTab: String = "home"
    
    var views = ["home", "app", "profile"]
    
    //отключаем видимость стандартного TabBar
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack (alignment: .bottom){
            TabView(selection: $selectionTab) {
                HomeView()
                    .tag("home")
                    .background(Color("lightGray"))
                AppView()
                    .tag("app")
                    .background(Color("lightGray"))
                ProfileView()
                    .tag("profile")
                    .background(Color("lightGray"))
            }
            
            HStack {
                ForEach(views, id: \.self) { view in
                    Spacer()
                    CustomTabView(currentTab: $selectionTab, image: view)
                    Spacer()
                }
            }
            .padding(.vertical, 15)
            .padding(.horizontal, 23)
            .background(.white)
            .clipShape(Capsule())
            .shadow(color: .black.opacity(0.3), radius: 10, x: 4, y: 4)
            .frame(width: 200)
            
        }
        .frame(width: .infinity, height: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
