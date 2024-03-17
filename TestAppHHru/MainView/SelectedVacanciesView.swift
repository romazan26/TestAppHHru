//
//  SelectedVacanciesView.swift
//  TestAppHHru
//
//  Created by Роман on 17.03.2024.
//

import SwiftUI

struct SelectedVacanciesView: View {
    @ObservedObject var viewModel: MainViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(viewModel.favoriteVacancy.count) вакансия")
            ScrollView {
                ForEach(viewModel.vacancies, id: \.self.id) { vacancy in
                    if vacancy.isFavorite {
                        VacancyCellView(vacancy: vacancy)
                    }
                }
                .navigationTitle("Избранное")
            }
        }
    }
}

#Preview {
    SelectedVacanciesView(viewModel: MainViewModel())
}
