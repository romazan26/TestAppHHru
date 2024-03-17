//
//  FindView.swift
//  TestAppHHru
//
//  Created by Роман on 14.03.2024.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 10) {
                
                ScrollView(.horizontal) {
                    HStack{
                        ForEach(viewModel.offers, id: \.self.id) { offer in
                           offerCellView(offer: offer)
                        }
                    }
                }
                Text("Вакансии для вас").font(.title)
                VStack {
                    ForEach(viewModel.vacancies.prefix(2), id: \.self.id) { vacancy in
                        VacancyCellView(vacancy: vacancy)
                    }
                }
                NavigationLink {
                    VacancyListView(viewModel: viewModel)
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                        Text("Еще \(viewModel.vacancies.count) вакансий для вас")
                            .foregroundStyle(.white)
                    }.frame(height: 40)
                }
                .toolbar(content: {
                    ToolbarItem {
                        HStack{
                            TextFieldImageView(systemImage: "magnifyingglass",
                                               placeholder: "Должность, ключевые слова",
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
            }
            .padding(10)
        }
    }
}
    
    #Preview {
        MainView()
    }
