//
//  FindViewController.swift
//  TestAppHHru
//
//  Created by Роман on 14.03.2024.
//

import Foundation
import SwiftUI

final class MainViewModel: ObservableObject {
    
    private var netWorkManager = NetWorkManager()
    
    @Published var offers = [Offer]()
    @Published var vacancies = [Vacancy]()
    @Published var seachText = ""
    @Published var favoriteVacancy = [Vacancy]()
    
    init() {
        netWorkManager.fetchData { [weak self] searchResults in
            self?.offers = searchResults?.offers ?? []
            self?.vacancies = searchResults?.vacancies ?? []
        }
       getFavoriteVacancy()
    }
    
    
    func getFavoriteVacancy(){
        for vacancy in vacancies {
            if vacancy.isFavorite {
                favoriteVacancy.append(vacancy)
            }
        }
        
    }
}
