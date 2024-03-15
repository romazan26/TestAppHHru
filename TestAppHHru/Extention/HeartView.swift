//
//  HeartView.swift
//  TestAppHHru
//
//  Created by Роман on 15.03.2024.
//

import SwiftUI

struct HeartView: View {
    @State var isFavarite: Bool
    var body: some View {
        Button(action: {isFavarite.toggle()}, label: {
            Image(systemName: isFavarite ? "heart.fill" : "heart")
                .foregroundStyle(.blue)
                .frame(width: 24, height: 24)
        })
    }
}

#Preview {
    HeartView(isFavarite: true)
}
