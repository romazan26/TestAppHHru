//
//  VacancyViewModel.swift
//  TestAppHHru
//
//  Created by Роман on 14.03.2024.
//

import Foundation

final class VacancyViewModel: ObservableObject {
    @Published var vacancy: Vacancy!
    @Published var adres: String
    
    init(vacancy: Vacancy!) {
        self.vacancy = vacancy
        adres = "\(vacancy.address.town) \(vacancy.address.street) \(vacancy.address.house)"
        
    }
}
