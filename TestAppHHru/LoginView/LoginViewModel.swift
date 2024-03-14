//
//  LoginViewModel.swift
//  TestAppHHru
//
//  Created by Роман on 14.03.2024.
//

import Foundation

final class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var isCorrectEmail = false
    @Published var isLogin = false
    
    private let currentEmail = "example@mail.ru"
    
    func checkEmail(){
        if email == currentEmail {
            isCorrectEmail.toggle()
        }else {email = ""}
    }
}
