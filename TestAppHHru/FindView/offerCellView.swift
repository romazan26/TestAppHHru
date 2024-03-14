//
//  offerCellView.swift
//  TestAppHHru
//
//  Created by Роман on 14.03.2024.
//

import SwiftUI

enum IdOffer: String {
    case vacancies = "near_vacancies"
    case level = "level_up_resume"
    case lob = "temporary_job"
    
}

struct offerCellView: View {
    
    var offer: Offer
    
    var body: some View {
        VStack(alignment: .leading) {
            if offer.id == "near_vacancies" {
                Circle()
                    .frame(width: 32,height: 32)
                    .foregroundStyle(.blue)
            }
            if offer.id == "level_up_resume" {
                Circle()
                    .frame(width: 32,height: 32)
                    .foregroundStyle(.green)
            }
            if offer.id == "temporary_job" {
                Circle()
                    .frame(width: 32,height: 32)
                    .foregroundStyle(.green)
            }
            Text(offer.title)
                .foregroundStyle(.white)
                .font(.system(size: 14))
        }
        .frame(width: 132, height: 120)
        .background(Color.gray)
        .cornerRadius(10)
    }
}

#Preview {
    offerCellView(offer: Offer(id: "near_vacancies", title: "Вакансии рядом с вами", link: "https://hh.ru/", button: Buttonn(text: "Поднять")))
}
