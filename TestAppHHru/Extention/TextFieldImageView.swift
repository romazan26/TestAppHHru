//
//  TextFieldImageView.swift
//  TestAppHHru
//
//  Created by Роман on 14.03.2024.
//

import SwiftUI

struct TextFieldImageView: View {
    
    @State var systemImage = ""
    @State var placeholder = ""
    @Binding var text: String
    var body: some View {
        HStack {
            HStack {
                Image(systemName: systemImage)
                    .padding(5)
                    .foregroundStyle(.gray)
                TextField(placeholder, text: $text)
            }
            .frame(width: 320,height: 40)
        }
        .background(Color.gray.opacity(0.4)).cornerRadius(8)
        
    }
}

#Preview {
    TextFieldImageView( text: .constant(""))
}
