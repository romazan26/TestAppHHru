//
//  CircleAndImageView.swift
//  TestAppHHru
//
//  Created by Роман on 15.03.2024.
//

import SwiftUI

struct CircleAndImageView: View {
    
    var text = ""
    var text2 = ""
    var imageName = ""
    
    var body: some View {
        HStack{
            Text("\(text) \(text2)")
            ZStack{
                Circle()
                    .foregroundStyle(.specialgreen)
                    .frame(width: 16, height: 16)
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 8, height: 8)
            }
        }
        .padding(10)
        .background(Color.specialDarkgreen)
        .cornerRadius(8)
    }
}

#Preview {
    CircleAndImageView()
}
