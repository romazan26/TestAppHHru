//
//  offerCellView.swift
//  TestAppHHru
//
//  Created by Роман on 14.03.2024.
//

import SwiftUI

struct offerCellView: View {
    var offer: Offer
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .frame(width: 132, height: 120)
        .background(Color.gray)
    }
}

#Preview {
    offerCellView(offer: Offer(id: "near_vacancies", title: "Вакансии рядом с вами", link: "https://hh.ru/", button: Button(text: "Поднять")))
}
