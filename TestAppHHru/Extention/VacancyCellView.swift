//
//  JobCellView.swift
//  TestAppHHru
//
//  Created by Роман on 14.03.2024.
//

import SwiftUI

struct VacancyCellView: View {
    
    var vacancy: Vacancy
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text("Сейчас просматривает человек")
                        .foregroundStyle(.specialgreen)
                    Spacer()
                    HeartView(isFavarite: vacancy.isFavorite)
                }
                Text(vacancy.title).font(.title2)
                Text(vacancy.address.town)
                Text(vacancy.company)
                Text(vacancy.experience.previewText)
                HStack {
                    Image(systemName: "gym.bag")
                        .resizable()
                        .frame(width: 16, height: 16)
                    Text("Опубликовано \(vacancy.publishedDate)").foregroundStyle(.gray3)
                }
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                
                ZStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .frame(width: 296, height: 32)
                        .foregroundStyle(.specialgreen)
                    Text("Откликнуться").foregroundStyle(.white)
                }
            })
        }
        .padding(10)
        .background(Color.gray2.opacity(0.4))
        .cornerRadius(10)
        
    }
}

#Preview {
    VacancyCellView(vacancy: Vacancy(id: "1", lookingNumber: 1, title: "UI/UX дизайнер", address: Address(town: "Минск", street: "", house: ""), company: "Мобирикс", experience: Experience(previewText: "Опыт от 1 до 3 лет", text: ""), publishedDate: "2024-02-20", isFavorite: true, salary: Salary(full: "", short: ""), schedules: [], appliedNumber: 0, description: "", responsibilities: "", questions: []))
}
