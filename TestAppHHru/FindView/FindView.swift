//
//  FindView.swift
//  TestAppHHru
//
//  Created by Роман on 14.03.2024.
//

import SwiftUI

struct FindView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack{
                    ForEach(0..<4) { _ in
                        VStack {
                            Circle()
                                .frame(width: 32,height: 32)
                                .foregroundStyle(.blue)
                            Text("Ваансии рядом")
                        }
                        .frame(width: 132, height: 120)
                        .background(Color.gray)
                        .cornerRadius(10)
                    }
                }
            }
            Text("Вакансии для вас")
            VStack {
               JobCellView()
                JobCellView()
            }
        }
    }
}
    
    #Preview {
        FindView()
    }
