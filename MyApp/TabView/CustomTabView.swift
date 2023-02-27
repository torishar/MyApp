//
//  CustomTabView.swift
//  MyApp
//
//  Created by Viktoriia Sharukhina on 27.02.2023.
//

import SwiftUI

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
