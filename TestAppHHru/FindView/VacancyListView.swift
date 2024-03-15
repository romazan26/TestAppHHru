//
//  VacancyListView.swift
//  TestAppHHru
//
//  Created by Роман on 14.03.2024.
//

import SwiftUI

struct VacancyListView: View {
    @ObservedObject var viewModel: FindViewModel
    var body: some View {
        VStack{
            HStack{
                Text("\(viewModel.vacancies.count) вакансий")
                Spacer()
                Menu("По соответствию") {
                    
                }
            }
            ScrollView {
                ForEach(viewModel.vacancies, id: \.self.id) { vacancy in
                    NavigationLink {
                        VacancyView(viewModel: VacancyViewModel(vacancy: vacancy))
                    } label: {
                        JobCellView(vacancy: vacancy)
                    }.foregroundStyle(.white)
                }
            }
            .toolbar(content: {
                ToolbarItem {
                    HStack{
                        TextFieldImageView(systemImage: "",
                                           placeholder: "Должность по подходящим вакансиям",
                                           text: $viewModel.seachText)
                        
                        Button(action: {}, label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 40, height: 40)
                                    .foregroundStyle(Color.gray.opacity(0.4))
                                Image(systemName: "slider.horizontal.3").foregroundStyle(.white)
                            }
                        })
                    }
                }
            })
        }.padding(8)
    }
}

#Preview {
    VacancyListView(viewModel: FindViewModel())
}
