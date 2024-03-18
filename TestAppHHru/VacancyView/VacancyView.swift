//
//  VacancyView.swift
//  TestAppHHru
//
//  Created by Роман on 14.03.2024.
//

import SwiftUI
import MapKit

struct VacancyView: View {
    
    @ObservedObject var viewModel: VacancyViewModel
    @StateObject private var mapApi = MapAPI()
    
    
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                
                //MARK: - Options vacacy
                VStack(alignment: .leading) {
                    Text(viewModel.vacancy.title).font(.title)
                    
                    Text(viewModel.vacancy.salary.full).padding(.vertical)
                    
                    Text("Требумый опят: \(viewModel.vacancy.experience.previewText)")
                    Text(viewModel.vacancy.schedules[0])
                }
                HStack{
                    CircleAndImageView(text: String(viewModel.vacancy.appliedNumber ?? 0),
                                       text2: "уже человек откликнулись",
                                       imageName: "person")
                    CircleAndImageView(text: String(viewModel.vacancy.lookingNumber ?? 0),
                                       text2: "человека сейчас смотрят",
                                       imageName: "eye")
                }
                
                //MARK: - Map adress
                VStack(alignment: .leading) {
                    Text(viewModel.vacancy.company).font(.title2)
                    Map(coordinateRegion: $mapApi.region, annotationItems: mapApi.locations){ location in
                        MapMarker(coordinate: location.coordinate, tint: .blue)
                    }
                    .cornerRadius(8)
                    .onAppear(perform: {
                        mapApi.getLocation(address: viewModel.adres, delta: 0.5)
                    })
                .frame(height: 58)
                    Text(viewModel.adres)
                }
                .padding()
                .background(Color.gray1)
                .cornerRadius(8)
                
              //MARK: - Description Vacancy
                VStack(alignment: .leading){
                    Text(viewModel.vacancy.description ?? "")
                    Text("Ваши задачи")
                        .padding(.top)
                        .font(.title2)
                    Text(viewModel.vacancy.responsibilities)
                }
                VStack(alignment: .leading){
                    Text("Задайте вопрос работадателю")
                    Text("Он получит его с откликом")
                        .foregroundStyle(.gray)
                        .padding(.vertical, 1)
                    ForEach(viewModel.vacancy.questions, id: \.self) { question in
                        Text(question)
                            .padding(8)
                            .background(Color.gray)
                            .cornerRadius(15)
                    }
                    Button {
                        //action
                    } label: {
                        Text("Откликнуться")
                            .frame(width: 330)
                            .padding()
                            .background(Color.specialgreen)
                            .cornerRadius(15)
                            .foregroundStyle(.white)
                            
                    }.padding(.top, 8)

                }.padding(.top)
            }.padding(8)
        }
        //MARK: - Toolbar
        .toolbar(content: {
            ToolbarItem {
                HStack {
                    Image(systemName: "eye")
                    Image(systemName: "square.and.arrow.up")
                    HeartView(isFavarite: viewModel.vacancy.isFavorite)
                }
            }
        })
    }
}

//MARK: - Preview
#Preview {
    VacancyView(viewModel: VacancyViewModel(vacancy: Vacancy(id: "1", lookingNumber: 2, title: "UI/UX дизайнер", address: Address(town: "Минск", street: "", house: ""), company: "Мобирикс", experience: Experience(previewText: "Опыт от 1 до 3 лет", text: ""), publishedDate: "2024-02-20", isFavorite: true, salary: Salary(full: "Уровень дохода не указан", short: ""), schedules: ["частичная занятость","полный день"], appliedNumber: 147, description: "Мы ищем специалиста на позицию UX/UI Designer, который вместе с коллегами будет заниматься проектированием пользовательских интерфейсов внутренних и внешних продуктов компании.", responsibilities: "- проектирование пользовательских сценариев и создание прототипов;\n- разработка интерфейсов для продуктов компании (Web+App);\n- работа над созданием и улучшением Дизайн-системы;\n- взаимодействие с командами frontend-разработки;\n- контроль качества внедрения дизайна;\n- ситуативно: создание презентаций и других материалов на основе фирменного стиля компании", questions: ["Где располагается место работы?","Какой график работы?","Вакансия открыта?","Какая оплата труда?"])))
}


