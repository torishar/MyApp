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
                Text("2")
                    .tag("app")
                Text("3")
                    .tag("profile")
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
        //.ignoresSafeArea()
    }
}

struct CustomTabView: View {
    @Binding var currentTab: String
    var image: String
    var body: some View {
        Button {
            currentTab = image
        } label: {
            Image(image)
                .resizable()
                .frame(width: 21, height: 21)
                .opacity(currentTab == image ? 1 : 0.3)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
