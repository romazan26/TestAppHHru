//
//  FindView.swift
//  TestAppHHru
//
//  Created by Роман on 14.03.2024.
//

import SwiftUI

struct FindView: View {
    @StateObject var viewModel = FindViewModel()
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack{
                TextField("Должность, ключевые слова", text: $viewModel.seachText)
                    .padding(5)
                    .frame(height: 40)
                    .background(Color.gray.opacity(0.4))
                    .cornerRadius(10)
                    
                Button(action: {}, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 40, height: 40)
                            .foregroundStyle(Color.gray.opacity(0.4))
                        Image(systemName: "slider.horizontal.3").foregroundStyle(.white)
                    }
                })
            }
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
                    JobCellView(vacancy: vacancy)
                }
            }
            Button("Еще 143 вакансии") {
                //action
            }
            .frame(width: 330,height: 48)
            .buttonStyle(.borderedProminent)
        }
    }
}
    
    #Preview {
        FindView()
    }
