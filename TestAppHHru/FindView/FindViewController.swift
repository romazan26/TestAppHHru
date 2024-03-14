//
//  FindViewController.swift
//  TestAppHHru
//
//  Created by Роман on 14.03.2024.
//

import Foundation

final class FindViewController: ObservableObject {
    
    private var netWorkManager = NetWorkManager()
    
    @Published var offers = [Offer]()
    @Published var vacancies = [Vacancy]()
    
    init() {
        netWorkManager.fetchData { [weak self] searchResults in
            self?.offers = searchResults?.offers ?? []
            self?.vacancies = searchResults?.vacancies ?? []
        }
    }
}
