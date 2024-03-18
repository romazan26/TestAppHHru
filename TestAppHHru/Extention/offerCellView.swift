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
                ZStack{
                    Circle()
                        .foregroundStyle(.blue)
                        .frame(width: 32,height: 32)
                    Image(systemName: "person")
                }
                    
                    
            }
            if offer.id == "level_up_resume" {
                ZStack{
                    Circle()
                        .foregroundStyle(.specialDarkgreen)
                        .frame(width: 32,height: 32)
                    Image(systemName: "star")
                }
            }
            if offer.id == "temporary_job" {
                ZStack{
                    Circle()
                        .frame(width: 32,height: 32)
                        .foregroundStyle(.specialDarkgreen)
                    Image(systemName: "list.clipboard")
                }
            }
            Text(offer.title)
                .foregroundStyle(.white)
                .font(.system(size: 14))
        }
        .frame(width: 132, height: 110)
        .background(Color.gray2.opacity(0.4))
        .cornerRadius(10)
    }
}

#Preview {
    offerCellView(offer: Offer(id: "near_vacancies", title: "Вакансии рядом с вами", link: "https://hh.ru/", button: Buttonn(text: "Поднять")))
}
