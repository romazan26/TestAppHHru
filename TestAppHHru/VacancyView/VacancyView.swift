//
//  VacancyView.swift
//  TestAppHHru
//
//  Created by Роман on 14.03.2024.
//

import SwiftUI

struct VacancyView: View {
    @ObservedObject var viewModel: VacancyViewModel
    var body: some View {
        VStack {
            Text(viewModel.vacancy.title)
            Text(viewModel.vacancy.salary.full)
            Text("Требумый опят: \(viewModel.vacancy.experience.previewText)")
            Text(viewModel.vacancy.schedules[0])
        }
    }
}

#Preview {
    VacancyView(viewModel: VacancyViewModel(vacancy: Vacancy(id: "1", lookingNumber: 2, title: "UI/UX дизайнер", address: Address(town: "Минск", street: "", house: ""), company: "Мобирикс", experience: Experience(previewText: "Опыт от 1 до 3 лет", text: ""), publishedDate: "2024-02-20", isFavorite: true, salary: Salary(full: "Уровень дохода не указан", short: ""), schedules: ["частичная занятость","полный день"], appliedNumber: 147, description: "", responsibilities: "", questions: [])))
}
