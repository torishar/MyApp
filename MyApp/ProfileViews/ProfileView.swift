//
//  ProfileView.swift
//  MyApp
//
//  Created by Viktoriia Sharukhina on 26.02.2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                VStack {
                    HStack(alignment: .top) {
                        VStack(alignment: .leading) {
                            Text("Динамика недели")
                                .font(.system(size: 22, weight: .black))
                            Text("Статистика")
                                .font(.system(size: 18, weight: .light))
                        }
                        
                        Spacer()
                        
                        Image(systemName: "gearshape.fill")
                    }
                    HStack(alignment: .bottom, spacing: 33) {
                        VStack {
                            Rectangle()
                                .frame(width: 20, height: 74)
                                .clipShape(Capsule())
                            Circle()
                                .frame(width: 20)
                        }
                        .foregroundColor(Color("pink"))
                        
                        VStack {
                            Rectangle()
                                .frame(width: 20, height: 108)
                                .clipShape(Capsule())
                            Circle()
                                .frame(width: 20)
                        }
                        .foregroundColor(Color("yellowLight"))
                        
                        VStack {
                            Rectangle()
                                .frame(width: 20, height: 58)
                                .clipShape(Capsule())
                            Circle()
                                .frame(width: 20)
                        }
                        .foregroundColor(Color("blueDark"))
                        
                        VStack {
                            Rectangle()
                                .frame(width: 20, height: 87)
                                .clipShape(Capsule())
                            Circle()
                                .frame(width: 20)
                        }
                        .foregroundColor(Color("green"))
                        
                        VStack {
                            Rectangle()
                                .frame(width: 20, height: 103)
                                .clipShape(Capsule())
                            Circle()
                                .frame(width: 20)
                        }
                        .foregroundColor(Color("purple"))
                        
                        VStack {
                            Rectangle()
                                .frame(width: 20, height: 84)
                                .clipShape(Capsule())
                            Circle()
                                .frame(width: 20)
                        }
                        .foregroundColor(Color("violet"))
                    }
                }
                .padding(30)
                .background(Color("gray"))
                .cornerRadius(20)
                .padding(.horizontal, 15)
                
                
                VStack(alignment: .leading) {
                    VStack(spacing: 30) {
                        VStack(alignment: .leading, spacing: 20) {
                            VStack(alignment: .leading) {
                                Text("Пользователи")
                                    .font(.system(size: 22, weight: .black))
                                Text("топ 3")
                                    .font(.system(size: 18, weight: .light))
                            }
                            .padding(.horizontal, 30)
                            HStack {
                                Image("user1")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 100, height: 100)
                                    .clipShape(Circle())
                                Spacer()
                                Image("user2")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 100, height: 100)
                                    .clipShape(Circle())
                                Spacer()
                                Image("user3")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 100, height: 100)
                                    .clipShape(Circle())
                            }
                        }
                        
                        Button {
                            //
                        } label: {
                            Text("показать все")
                        }
                        .padding(.horizontal, 66)
                        .padding(.vertical, 14)
                        .foregroundColor(.white)
                        .background(Color("pink"))
                        .clipShape(Capsule())

                    }
                                        
                }
                .padding(.horizontal, 15)
                
                
                VStack(alignment: .leading) {
                    HStack {
                        Image("user1")
                        
                            .resizable()
                            .scaledToFill()
                            .frame(width: 55, height: 55)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text("user name")
                                .font(.system(size: 18, weight: .bold))
                            Text("login")
                                .font(.system(size: 14, weight: .regular))
                        }
                        Spacer()
                        Image(systemName: "ellipsis")
                    }
                    .padding(.horizontal, 30)
                    
                    Image("image")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width - 30, height: 150)
                        .cornerRadius(20)
                    HStack {
                        HStack {
                            Image(systemName: "heart")
                            Text("1.3k")
                        }
                        Spacer()
                            .frame(width: 40)
                        HStack {
                            Image(systemName: "ellipsis.message")
                            Text("2.3k")
                        }
                        
                    }
                    .padding(.horizontal, 30)
                }
                .padding(.horizontal, 15)
            }
            .padding(.vertical, 60)
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
