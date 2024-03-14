//
//  JobCellView.swift
//  TestAppHHru
//
//  Created by Роман on 14.03.2024.
//

import SwiftUI

struct JobCellView: View {
    
    var vacancy: Vacancy
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text("Сейчас просматривает человек")
                        .foregroundStyle(.green)
                    Spacer()
                    Image(systemName: vacancy.isFavorite ? "heart.fill" : "heart").foregroundStyle(.blue)
                }
                Text(vacancy.title).font(.title2)
                Text(vacancy.address.town)
                Text(vacancy.company)
                Text(vacancy.experience.previewText)
                Text("Опубликовано \(vacancy.publishedDate)")
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                
                ZStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .frame(width: 296, height: 32)
                        .foregroundStyle(.green)
                    Text("Откликнуться").foregroundStyle(.white)
                }
            })
        }
        .padding(10)
        //.frame(width: 328, height: 233)
        .background(Color.gray.opacity(0.4))
        .cornerRadius(10)
        
    }
}

#Preview {
    JobCellView(vacancy: Vacancy(id: "1", lookingNumber: 1, title: "UI/UX дизайнер", address: Address(town: "Минск", street: "", house: ""), company: "Мобирикс", experience: Experience(previewText: "Опыт от 1 до 3 лет", text: ""), publishedDate: "2024-02-20", isFavorite: true, salary: Salary(full: "", short: ""), schedules: [], appliedNumber: 0, description: "", responsibilities: "", questions: []))
}
