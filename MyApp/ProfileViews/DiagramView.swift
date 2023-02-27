//
//  DiagramView.swift
//  MyApp
//
//  Created by Viktoriia Sharukhina on 28.02.2023.
//

import SwiftUI

struct DiagramView: View {
    var color: String
    var rectangleHeight: CGFloat
    var circleHWidth: CGFloat
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: circleHWidth, height: rectangleHeight)
                .clipShape(Capsule())
            Circle()
                .frame(width: circleHWidth)
        }
        .foregroundColor(Color(color))
    }
}


